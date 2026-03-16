#include <stdint.h>
#include <stddef.h>
#include <string.h>

#include "xil_io.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xparameters.h"
#include "xtime_l.h"

#include "embedded_golden_00.h"
#include "embedded_golden_01.h"
#include "embedded_golden_02.h"

#if defined(XPAR_GEMM_INT8_0_BASEADDR)
  #define GEMM_BASE   XPAR_GEMM_INT8_0_BASEADDR
#elif defined(XPAR_GEMM_INT8_0_S_AXI_CONTROL_BASEADDR)
  #define GEMM_BASE   XPAR_GEMM_INT8_0_S_AXI_CONTROL_BASEADDR
#else
  #error "No se encontro base address para gemm_int8 en xparameters.h"
#endif

#define REG_CTRL    0x00U
#define REG_X_LO    0x10U
#define REG_X_HI    0x14U
#define REG_W_LO    0x1CU
#define REG_W_HI    0x20U
#define REG_Y_LO    0x28U
#define REG_Y_HI    0x2CU

#define AP_START    (1U << 0)
#define AP_DONE     (1U << 1)
#define AP_IDLE     (1U << 2)
#define AP_READY    (1U << 3)

#define NUM_CASES   3
#define NUM_PROJS   3

#define PROJ_Q      0
#define PROJ_K      1
#define PROJ_V      2

/* Dimensiones comunes a los tres casos */
#define M EMBED_CASE_M
#define K EMBED_CASE_K
#define N EMBED_CASE_N
#define X_ELEMS EMBED_CASE_X_ELEMS
#define W_ELEMS EMBED_CASE_W_ELEMS
#define Y_ELEMS EMBED_CASE_Y_ELEMS

#define GEMM_TIMEOUT_CYCLES 200000000U

typedef struct {
    const char    *name;
    const int8_t  *Xq;
    const int8_t  *Wq;
    const int8_t  *Wk;
    const int8_t  *Wv;
    const int32_t *Qref;
    const int32_t *Kref;
    const int32_t *Vref;
} golden_case_t;

/* ============================================================
 * Variables globales para XSDB
 * caso: 0=golden_00, 1=golden_01, 2=golden_02
 * proj: 0=Q, 1=K, 2=V
 * ============================================================ */
volatile uint32_t g_status = 0;
volatile uint32_t g_case_index = 0xFFFFFFFFU;
volatile uint32_t g_proj_index = 0xFFFFFFFFU;

volatile uint32_t g_ctrl_before[NUM_CASES][NUM_PROJS];
volatile uint32_t g_ctrl_after [NUM_CASES][NUM_PROJS];

volatile int32_t  g_y00[NUM_CASES][NUM_PROJS];
volatile int32_t  g_checksum[NUM_CASES][NUM_PROJS];

volatile uint32_t g_mismatch[NUM_CASES][NUM_PROJS];
volatile uint32_t g_first_bad_idx[NUM_CASES][NUM_PROJS];
volatile int32_t  g_first_bad_hw[NUM_CASES][NUM_PROJS];
volatile int32_t  g_first_bad_ref[NUM_CASES][NUM_PROJS];

volatile uint64_t g_addr_x[NUM_CASES];
volatile uint64_t g_addr_w[NUM_CASES][NUM_PROJS];
volatile uint64_t g_addr_ref[NUM_CASES][NUM_PROJS];
volatile uint64_t g_addr_y = 0;

volatile uint32_t g_timeout_count = 0;
volatile uint32_t g_total_errors = 0;

/* Medida de tiempo con timer del A53 */
volatile uint64_t g_t_start[NUM_CASES][NUM_PROJS];
volatile uint64_t g_t_end[NUM_CASES][NUM_PROJS];

volatile uint64_t g_elapsed_counts[NUM_CASES][NUM_PROJS];
volatile uint64_t g_elapsed_us[NUM_CASES][NUM_PROJS];

volatile uint64_t g_case_elapsed_counts[NUM_CASES];
volatile uint64_t g_case_elapsed_us[NUM_CASES];

volatile uint64_t g_total_elapsed_counts = 0;
volatile uint64_t g_total_elapsed_us = 0;

volatile uint64_t g_counts_per_second = COUNTS_PER_SECOND;

/* ============================================================
 * Un solo buffer de salida, reutilizado en las 9 corridas
 * ============================================================ */
__attribute__((aligned(64))) static int32_t Y_buf[Y_ELEMS];

/* ============================================================
 * Tabla de casos
 * ============================================================ */
static const golden_case_t g_cases[NUM_CASES] = {
    {
        "golden_00_seq64",
        embedded_golden_00_Xq,
        embedded_golden_00_Wq,
        embedded_golden_00_Wk,
        embedded_golden_00_Wv,
        embedded_golden_00_Qref,
        embedded_golden_00_Kref,
        embedded_golden_00_Vref
    },
    {
        "golden_01_seq64",
        embedded_golden_01_Xq,
        embedded_golden_01_Wq,
        embedded_golden_01_Wk,
        embedded_golden_01_Wv,
        embedded_golden_01_Qref,
        embedded_golden_01_Kref,
        embedded_golden_01_Vref
    },
    {
        "golden_02_seq64",
        embedded_golden_02_Xq,
        embedded_golden_02_Wq,
        embedded_golden_02_Wk,
        embedded_golden_02_Wv,
        embedded_golden_02_Qref,
        embedded_golden_02_Kref,
        embedded_golden_02_Vref
    }
};

static inline const char *proj_name(int proj)
{
    if (proj == PROJ_Q) return "Q";
    if (proj == PROJ_K) return "K";
    return "V";
}

static inline void write_addr64(uint32_t base, uint32_t off_lo, uint64_t addr)
{
    uint32_t lo = (uint32_t)(addr & 0xFFFFFFFFULL);
    uint32_t hi = (uint32_t)((addr >> 32) & 0xFFFFFFFFULL);

    Xil_Out32(base + off_lo,     lo);
    Xil_Out32(base + off_lo + 4, hi);
}

static inline uint32_t rd(uint32_t base, uint32_t off)
{
    return Xil_In32(base + off);
}

static inline void wr(uint32_t base, uint32_t off, uint32_t v)
{
    Xil_Out32(base + off, v);
}

static int32_t checksum_first_256(const int32_t *buf)
{
    int i;
    int32_t sum = 0;

    for (i = 0; i < 256; i++) {
        sum += buf[i];
    }

    return sum;
}

static uint32_t compare_against_ref(
    const int32_t *hw,
    const int32_t *ref,
    volatile uint32_t *first_bad_idx,
    volatile int32_t *first_bad_hw,
    volatile int32_t *first_bad_ref)
{
    uint32_t errors = 0;
    size_t i;

    *first_bad_idx = 0xFFFFFFFFU;
    *first_bad_hw = 0;
    *first_bad_ref = 0;

    for (i = 0; i < Y_ELEMS; i++) {
        if (hw[i] != ref[i]) {
            if (errors == 0U) {
                *first_bad_idx = (uint32_t)i;
                *first_bad_hw  = hw[i];
                *first_bad_ref = ref[i];
            }
            errors++;
        }
    }

    return errors;
}

static uint64_t counts_to_us(uint64_t counts)
{
    return (counts * 1000000ULL) / (uint64_t)COUNTS_PER_SECOND;
}

static int gemm_start_wait(
    const int8_t *X,
    const int8_t *W,
    int32_t *Y,
    volatile uint32_t *ctrl_before,
    volatile uint32_t *ctrl_after,
    volatile uint64_t *t_start,
    volatile uint64_t *t_end,
    volatile uint64_t *elapsed_counts,
    volatile uint64_t *elapsed_us)
{
    uint32_t timeout = GEMM_TIMEOUT_CYCLES;
    XTime t0, t1;

    Xil_DCacheFlushRange((INTPTR)X, X_ELEMS * sizeof(int8_t));
    Xil_DCacheFlushRange((INTPTR)W, W_ELEMS * sizeof(int8_t));
    Xil_DCacheFlushRange((INTPTR)Y, Y_ELEMS * sizeof(int32_t));

    write_addr64(GEMM_BASE, REG_X_LO, (uint64_t)(uintptr_t)X);
    write_addr64(GEMM_BASE, REG_W_LO, (uint64_t)(uintptr_t)W);
    write_addr64(GEMM_BASE, REG_Y_LO, (uint64_t)(uintptr_t)Y);

    *ctrl_before = rd(GEMM_BASE, REG_CTRL);

    wr(GEMM_BASE, REG_CTRL, 0U);

    XTime_GetTime(&t0);
    wr(GEMM_BASE, REG_CTRL, AP_START);

    while (((rd(GEMM_BASE, REG_CTRL) & AP_DONE) == 0U) && (timeout != 0U)) {
        timeout--;
    }

    XTime_GetTime(&t1);

    *ctrl_after = rd(GEMM_BASE, REG_CTRL);

    *t_start = (uint64_t)t0;
    *t_end = (uint64_t)t1;
    *elapsed_counts = (uint64_t)(t1 - t0);
    *elapsed_us = counts_to_us(*elapsed_counts);

    if (timeout == 0U) {
        return -1;
    }

    Xil_DCacheInvalidateRange((INTPTR)Y, Y_ELEMS * sizeof(int32_t));
    return 0;
}

static uint32_t run_projection(
    int case_idx,
    int proj_idx,
    const golden_case_t *gc,
    const int8_t *W,
    const int32_t *ref)
{
    int rc;

    memset(Y_buf, 0, sizeof(Y_buf));

    rc = gemm_start_wait(gc->Xq,
                         W,
                         Y_buf,
                         &g_ctrl_before[case_idx][proj_idx],
                         &g_ctrl_after[case_idx][proj_idx],
                         &g_t_start[case_idx][proj_idx],
                         &g_t_end[case_idx][proj_idx],
                         &g_elapsed_counts[case_idx][proj_idx],
                         &g_elapsed_us[case_idx][proj_idx]);

    if (rc != 0) {
        g_mismatch[case_idx][proj_idx] = 0xFFFFFFFFU;
        g_timeout_count++;
        xil_printf("%s/%s: TIMEOUT esperando AP_DONE\r\n",
                   gc->name, proj_name(proj_idx));
        return g_mismatch[case_idx][proj_idx];
    }

    g_y00[case_idx][proj_idx]      = Y_buf[0];
    g_checksum[case_idx][proj_idx] = checksum_first_256(Y_buf);

    g_mismatch[case_idx][proj_idx] = compare_against_ref(
        Y_buf,
        ref,
        &g_first_bad_idx[case_idx][proj_idx],
        &g_first_bad_hw[case_idx][proj_idx],
        &g_first_bad_ref[case_idx][proj_idx]);

    xil_printf("%s/%s: Y[0]=%ld  REF[0]=%ld  checksum256=%ld  mismatches=%lu  counts=%lu  us=%lu\r\n",
               gc->name,
               proj_name(proj_idx),
               (long)g_y00[case_idx][proj_idx],
               (long)ref[0],
               (long)g_checksum[case_idx][proj_idx],
               (unsigned long)g_mismatch[case_idx][proj_idx],
               (unsigned long)g_elapsed_counts[case_idx][proj_idx],
               (unsigned long)g_elapsed_us[case_idx][proj_idx]);

    if (g_mismatch[case_idx][proj_idx] != 0U) {
        xil_printf("%s/%s: first_bad idx=%lu hw=%ld ref=%ld\r\n",
                   gc->name,
                   proj_name(proj_idx),
                   (unsigned long)g_first_bad_idx[case_idx][proj_idx],
                   (long)g_first_bad_hw[case_idx][proj_idx],
                   (long)g_first_bad_ref[case_idx][proj_idx]);
    }

    return g_mismatch[case_idx][proj_idx];
}

int main(void)
{
    int c;
    uint32_t errors_this_run;

    g_status = 1;
    g_total_errors = 0;
    g_timeout_count = 0;

    memset((void*)g_ctrl_before, 0, sizeof(g_ctrl_before));
    memset((void*)g_ctrl_after,  0, sizeof(g_ctrl_after));
    memset((void*)g_y00,         0, sizeof(g_y00));
    memset((void*)g_checksum,    0, sizeof(g_checksum));
    memset((void*)g_mismatch,    0, sizeof(g_mismatch));
    memset((void*)g_first_bad_idx, 0xFF, sizeof(g_first_bad_idx));
    memset((void*)g_first_bad_hw,  0, sizeof(g_first_bad_hw));
    memset((void*)g_first_bad_ref, 0, sizeof(g_first_bad_ref));

    memset((void*)g_t_start, 0, sizeof(g_t_start));
    memset((void*)g_t_end, 0, sizeof(g_t_end));
    memset((void*)g_elapsed_counts, 0, sizeof(g_elapsed_counts));
    memset((void*)g_elapsed_us, 0, sizeof(g_elapsed_us));

    memset((void*)g_case_elapsed_counts, 0, sizeof(g_case_elapsed_counts));
    memset((void*)g_case_elapsed_us, 0, sizeof(g_case_elapsed_us));

    g_total_elapsed_counts = 0;
    g_total_elapsed_us = 0;

    memset((void*)g_addr_x, 0, sizeof(g_addr_x));
    memset((void*)g_addr_w, 0, sizeof(g_addr_w));
    memset((void*)g_addr_ref, 0, sizeof(g_addr_ref));
    g_addr_y = (uint64_t)(uintptr_t)Y_buf;

    xil_printf("\r\n=== GEMM BETO phase B: 3 casos embebidos (00/01/02) ===\r\n");
    xil_printf("GEMM_BASE = 0x%08lx\r\n", (unsigned long)GEMM_BASE);
    xil_printf("COUNTS_PER_SECOND = %lu\r\n", (unsigned long)g_counts_per_second);

    for (c = 0; c < NUM_CASES; c++) {
        g_addr_x[c] = (uint64_t)(uintptr_t)g_cases[c].Xq;

        g_addr_w[c][PROJ_Q] = (uint64_t)(uintptr_t)g_cases[c].Wq;
        g_addr_w[c][PROJ_K] = (uint64_t)(uintptr_t)g_cases[c].Wk;
        g_addr_w[c][PROJ_V] = (uint64_t)(uintptr_t)g_cases[c].Wv;

        g_addr_ref[c][PROJ_Q] = (uint64_t)(uintptr_t)g_cases[c].Qref;
        g_addr_ref[c][PROJ_K] = (uint64_t)(uintptr_t)g_cases[c].Kref;
        g_addr_ref[c][PROJ_V] = (uint64_t)(uintptr_t)g_cases[c].Vref;
    }

    for (c = 0; c < NUM_CASES; c++) {
        const golden_case_t *gc = &g_cases[c];

        g_case_index = (uint32_t)c;

        xil_printf("\r\n---- Caso %d: %s ----\r\n", c, gc->name);

        g_proj_index = PROJ_Q;
        g_status = 10 + (uint32_t)(c * 3 + PROJ_Q);
        errors_this_run = run_projection(c, PROJ_Q, gc, gc->Wq, gc->Qref);
        if (errors_this_run != 0xFFFFFFFFU) {
            g_total_errors += errors_this_run;
            g_case_elapsed_counts[c] += g_elapsed_counts[c][PROJ_Q];
            g_case_elapsed_us[c]     += g_elapsed_us[c][PROJ_Q];
            g_total_elapsed_counts   += g_elapsed_counts[c][PROJ_Q];
            g_total_elapsed_us       += g_elapsed_us[c][PROJ_Q];
        }

        g_proj_index = PROJ_K;
        g_status = 10 + (uint32_t)(c * 3 + PROJ_K);
        errors_this_run = run_projection(c, PROJ_K, gc, gc->Wk, gc->Kref);
        if (errors_this_run != 0xFFFFFFFFU) {
            g_total_errors += errors_this_run;
            g_case_elapsed_counts[c] += g_elapsed_counts[c][PROJ_K];
            g_case_elapsed_us[c]     += g_elapsed_us[c][PROJ_K];
            g_total_elapsed_counts   += g_elapsed_counts[c][PROJ_K];
            g_total_elapsed_us       += g_elapsed_us[c][PROJ_K];
        }

        g_proj_index = PROJ_V;
        g_status = 10 + (uint32_t)(c * 3 + PROJ_V);
        errors_this_run = run_projection(c, PROJ_V, gc, gc->Wv, gc->Vref);
        if (errors_this_run != 0xFFFFFFFFU) {
            g_total_errors += errors_this_run;
            g_case_elapsed_counts[c] += g_elapsed_counts[c][PROJ_V];
            g_case_elapsed_us[c]     += g_elapsed_us[c][PROJ_V];
            g_total_elapsed_counts   += g_elapsed_counts[c][PROJ_V];
            g_total_elapsed_us       += g_elapsed_us[c][PROJ_V];
        }

        xil_printf("Caso %d total: counts=%lu  us=%lu\r\n",
                   c,
                   (unsigned long)g_case_elapsed_counts[c],
                   (unsigned long)g_case_elapsed_us[c]);
    }

    xil_printf("Global total: counts=%lu  us=%lu\r\n",
               (unsigned long)g_total_elapsed_counts,
               (unsigned long)g_total_elapsed_us);

    if ((g_timeout_count == 0U) && (g_total_errors == 0U)) {
        g_status = 0x77770000U;
        xil_printf("\r\nOK: pasaron las 9 ejecuciones (3 casos x 3 proyecciones).\r\n");
    } else if (g_timeout_count != 0U) {
        g_status = 0xDEAD0001U;
        xil_printf("\r\nERROR: hubo %lu timeouts.\r\n",
                   (unsigned long)g_timeout_count);
    } else {
        g_status = 0xDEAD0000U | (g_total_errors & 0xFFFFU);
        xil_printf("\r\nERROR: total mismatches = %lu\r\n",
                   (unsigned long)g_total_errors);
    }

    while (1) {
        ;
    }
}
