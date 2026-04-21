#include <stdint.h>
#include <stddef.h>
#include <string.h>

#include "xil_io.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xparameters.h"
#include "xtime_l.h"
#include "xstatus.h"
#include "xiicps.h"

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

/* ============================================================
 * INA260 detectado en Linux como /sys/bus/i2c/devices/1-0040
 * Ajusta solo este bloque si tu BSP usa otro XIICPS device.
 * ============================================================ */
#if defined(XPAR_XIICPS_0_DEVICE_ID) || defined(XPAR_XIICPS_1_DEVICE_ID)
  #define INA260_I2C_ENABLED    1
#else
  #define INA260_I2C_ENABLED    0
#endif

#define INA260_I2C_ADDR         0x40U
#define INA260_I2C_SCLK_HZ      100000U

#define INA260_REG_CONFIG       0x00U
#define INA260_REG_CURRENT      0x01U
#define INA260_REG_BUS_VOLTAGE  0x02U
#define INA260_REG_POWER        0x03U

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
#define I2C_TIMEOUT_LOOPS   1000000U

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
 * Variables nuevas para energia/potencia via INA260
 * ============================================================ */
volatile uint32_t g_ina260_enabled = INA260_I2C_ENABLED;
volatile uint32_t g_ina260_addr = INA260_I2C_ADDR;
volatile uint32_t g_ina260_sclk_hz = INA260_I2C_SCLK_HZ;
volatile uint32_t g_ina260_init_status = 0xFFFFFFFFU;
volatile uint32_t g_ina260_last_status = 0;
volatile uint32_t g_ina260_ok = 0;


volatile uint32_t g_ina260_device_id_used = 0xFFFFFFFFU;
volatile uint32_t g_ina260_cfg_baseaddr = 0U;

volatile uint32_t g_ina260_probe_status_dev0 = 0xFFFFFFFFU;
volatile uint32_t g_ina260_probe_status_dev1 = 0xFFFFFFFFU;

volatile uint32_t g_ina260_debug_step  = 0U;
volatile uint32_t g_ina260_debug_reg   = 0U;
volatile uint32_t g_ina260_debug_wait1 = 0U;
volatile uint32_t g_ina260_debug_send  = 0U;
volatile uint32_t g_ina260_debug_wait2 = 0U;
volatile uint32_t g_ina260_debug_recv  = 0U;
volatile uint32_t g_ina260_debug_wait3 = 0U;


volatile uint32_t g_idle_power_mw = 0;
volatile int32_t  g_idle_current_ma = 0;
volatile uint32_t g_idle_bus_mv = 0;

volatile uint32_t g_power_before_mw[NUM_CASES][NUM_PROJS];
volatile uint32_t g_power_after_mw[NUM_CASES][NUM_PROJS];
volatile uint32_t g_power_avg_mw[NUM_CASES][NUM_PROJS];

volatile int32_t  g_current_before_ma[NUM_CASES][NUM_PROJS];
volatile int32_t  g_current_after_ma[NUM_CASES][NUM_PROJS];

volatile uint32_t g_bus_before_mv[NUM_CASES][NUM_PROJS];
volatile uint32_t g_bus_after_mv[NUM_CASES][NUM_PROJS];

volatile uint64_t g_energy_dyn_nj[NUM_CASES][NUM_PROJS];
volatile uint64_t g_case_energy_dyn_nj[NUM_CASES];
volatile uint64_t g_total_energy_dyn_nj = 0;

/* ============================================================
 * Un solo buffer de salida, reutilizado en las 9 corridas
 * ============================================================ */
__attribute__((aligned(64))) static int32_t Y_buf[Y_ELEMS];

#if INA260_I2C_ENABLED
static XIicPs g_iicps;
#endif

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

#if INA260_I2C_ENABLED
static int i2c_wait_not_busy(void)
{
    uint32_t timeout = I2C_TIMEOUT_LOOPS;

    while (XIicPs_BusIsBusy(&g_iicps)) {
        if (timeout == 0U) {
            return XST_FAILURE;
        }
        timeout--;
    }

    return XST_SUCCESS;
}



static int ina260_try_init_device(u16 dev_id)
{
    XIicPs_Config *cfg;
    int status;

    cfg = XIicPs_LookupConfig(dev_id);
    if (cfg == NULL) {
        return XST_FAILURE;
    }

    status = XIicPs_CfgInitialize(&g_iicps, cfg, cfg->BaseAddress);
    if (status != XST_SUCCESS) {
        return status;
    }

    status = XIicPs_SelfTest(&g_iicps);
    if (status != XST_SUCCESS) {
        return status;
    }

    status = XIicPs_SetSClk(&g_iicps, INA260_I2C_SCLK_HZ);
    if (status != XST_SUCCESS) {
        return status;
    }

    g_ina260_device_id_used = (uint32_t)dev_id;
    g_ina260_cfg_baseaddr = (uint32_t)cfg->BaseAddress;

    return XST_SUCCESS;
}

static int ina260_init(void)
{
    int status = XST_FAILURE;

    g_ina260_device_id_used = 0xFFFFFFFFU;
    g_ina260_cfg_baseaddr = 0U;
    g_ina260_probe_status_dev0 = 0xFFFFFFFFU;
    g_ina260_probe_status_dev1 = 0xFFFFFFFFU;

#if defined(XPAR_XIICPS_1_DEVICE_ID)
    g_ina260_debug_step = 11U;
    status = ina260_try_init_device(XPAR_XIICPS_1_DEVICE_ID);
    g_ina260_probe_status_dev1 = (uint32_t)status;
    if (status == XST_SUCCESS) {
        return XST_SUCCESS;
    }
#endif

#if defined(XPAR_XIICPS_0_DEVICE_ID)
    g_ina260_debug_step = 12U;
    status = ina260_try_init_device(XPAR_XIICPS_0_DEVICE_ID);
    g_ina260_probe_status_dev0 = (uint32_t)status;
    if (status == XST_SUCCESS) {
        return XST_SUCCESS;
    }
#endif

    return XST_FAILURE;
}

static int ina260_read_reg16(uint8_t reg, uint16_t *out)
{
    uint8_t tx;
    uint8_t rx[2];
    int status;

    tx = reg;

    g_ina260_debug_reg = (uint32_t)reg;
    g_ina260_debug_step = 21U;
    g_ina260_debug_wait1 = 0U;
    g_ina260_debug_send  = 0U;
    g_ina260_debug_wait2 = 0U;
    g_ina260_debug_recv  = 0U;
    g_ina260_debug_wait3 = 0U;

    status = i2c_wait_not_busy();
    g_ina260_debug_wait1 = (uint32_t)status;
    if (status != XST_SUCCESS) {
        return status;
    }

    XIicPs_SetOptions(&g_iicps, XIICPS_REP_START_OPTION);

    g_ina260_debug_step = 22U;
    status = XIicPs_MasterSendPolled(&g_iicps, &tx, 1, INA260_I2C_ADDR);
    g_ina260_debug_send = (uint32_t)status;
    if (status != XST_SUCCESS) {
        XIicPs_ClearOptions(&g_iicps, XIICPS_REP_START_OPTION);
        return status;
    }

    /* IMPORTANTE:
     * NO esperar bus-not-busy aqui.
     * Con repeated-start, el siguiente paso correcto es el RECV inmediato.
     */
    g_ina260_debug_step = 24U;
    status = XIicPs_MasterRecvPolled(&g_iicps, rx, 2, INA260_I2C_ADDR);
    g_ina260_debug_recv = (uint32_t)status;
    XIicPs_ClearOptions(&g_iicps, XIICPS_REP_START_OPTION);
    if (status != XST_SUCCESS) {
        return status;
    }

    g_ina260_debug_step = 25U;
    status = i2c_wait_not_busy();
    g_ina260_debug_wait3 = (uint32_t)status;
    if (status != XST_SUCCESS) {
        return status;
    }

    *out = ((uint16_t)rx[0] << 8) | (uint16_t)rx[1];
    g_ina260_debug_step = 26U;

    return XST_SUCCESS;
}

static int ina260_read_power_mw(uint32_t *mw)
{
    uint16_t raw;
    int status;

    status = ina260_read_reg16(INA260_REG_POWER, &raw);
    if (status != XST_SUCCESS) {
        return status;
    }

    *mw = (uint32_t)raw * 10U; /* 10 mW / bit */
    return XST_SUCCESS;
}

static int ina260_read_current_ma(int32_t *ma)
{
    uint16_t raw_u;
    int16_t raw_s;
    int status;

    status = ina260_read_reg16(INA260_REG_CURRENT, &raw_u);
    if (status != XST_SUCCESS) {
        return status;
    }

    raw_s = (int16_t)raw_u;
    *ma = ((int32_t)raw_s * 125) / 100; /* 1.25 mA / bit */

    return XST_SUCCESS;
}

static int ina260_read_bus_mv(uint32_t *mv)
{
    uint16_t raw;
    int status;

    status = ina260_read_reg16(INA260_REG_BUS_VOLTAGE, &raw);
    if (status != XST_SUCCESS) {
        return status;
    }

    *mv = ((uint32_t)raw * 125) / 100; /* 1.25 mV / bit */
    return XST_SUCCESS;
}

static int ina260_sample(uint32_t *power_mw, int32_t *current_ma, uint32_t *bus_mv)
{
    int status;

    status = ina260_read_power_mw(power_mw);
    if (status != XST_SUCCESS) {
        g_ina260_last_status = (uint32_t)status;
        return status;
    }

    status = ina260_read_current_ma(current_ma);
    if (status != XST_SUCCESS) {
        g_ina260_last_status = (uint32_t)status;
        return status;
    }

    status = ina260_read_bus_mv(bus_mv);
    if (status != XST_SUCCESS) {
        g_ina260_last_status = (uint32_t)status;
        return status;
    }

    g_ina260_last_status = 0U;
    return XST_SUCCESS;
}
#else

static int ina260_init(void)
{
    return XST_FAILURE;
}

static int ina260_sample(uint32_t *power_mw, int32_t *current_ma, uint32_t *bus_mv)
{
    (void)power_mw;
    (void)current_ma;
    (void)bus_mv;
    return XST_FAILURE;
}

#endif

static void update_energy_estimate(int case_idx, int proj_idx)
{
    uint32_t p_avg;
    uint32_t p_dyn;
    uint64_t e_nj;

    p_avg = (g_power_before_mw[case_idx][proj_idx] +
             g_power_after_mw[case_idx][proj_idx]) / 2U;

    g_power_avg_mw[case_idx][proj_idx] = p_avg;

    if (p_avg > g_idle_power_mw) {
        p_dyn = p_avg - g_idle_power_mw;
    } else {
        p_dyn = 0U;
    }

    /* mW * us = nJ */
    e_nj = (uint64_t)p_dyn * (uint64_t)g_elapsed_us[case_idx][proj_idx];

    g_energy_dyn_nj[case_idx][proj_idx] = e_nj;
    g_case_energy_dyn_nj[case_idx] += e_nj;
    g_total_energy_dyn_nj += e_nj;
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

    if (g_ina260_ok != 0U) {
        (void)ina260_sample(
            (uint32_t *)&g_power_before_mw[case_idx][proj_idx],
            (int32_t  *)&g_current_before_ma[case_idx][proj_idx],
            (uint32_t *)&g_bus_before_mv[case_idx][proj_idx]);
    }

    rc = gemm_start_wait(gc->Xq,
                         W,
                         Y_buf,
                         &g_ctrl_before[case_idx][proj_idx],
                         &g_ctrl_after[case_idx][proj_idx],
                         &g_t_start[case_idx][proj_idx],
                         &g_t_end[case_idx][proj_idx],
                         &g_elapsed_counts[case_idx][proj_idx],
                         &g_elapsed_us[case_idx][proj_idx]);

    if (g_ina260_ok != 0U) {
        (void)ina260_sample(
            (uint32_t *)&g_power_after_mw[case_idx][proj_idx],
            (int32_t  *)&g_current_after_ma[case_idx][proj_idx],
            (uint32_t *)&g_bus_after_mv[case_idx][proj_idx]);
    }

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

    if (g_ina260_ok != 0U) {
        update_energy_estimate(case_idx, proj_idx);
    }

    xil_printf("%s/%s: Y[0]=%ld  REF[0]=%ld  checksum256=%ld  mismatches=%lu  counts=%lu  us=%lu\r\n",
               gc->name,
               proj_name(proj_idx),
               (long)g_y00[case_idx][proj_idx],
               (long)ref[0],
               (long)g_checksum[case_idx][proj_idx],
               (unsigned long)g_mismatch[case_idx][proj_idx],
               (unsigned long)g_elapsed_counts[case_idx][proj_idx],
               (unsigned long)g_elapsed_us[case_idx][proj_idx]);

    if (g_ina260_ok != 0U) {
        xil_printf("%s/%s: INA260 P_before=%lu mW  P_after=%lu mW  P_avg=%lu mW\r\n",
                   gc->name,
                   proj_name(proj_idx),
                   (unsigned long)g_power_before_mw[case_idx][proj_idx],
                   (unsigned long)g_power_after_mw[case_idx][proj_idx],
                   (unsigned long)g_power_avg_mw[case_idx][proj_idx]);
    }

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
    int ina_status;

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

    memset((void*)g_power_before_mw, 0, sizeof(g_power_before_mw));
    memset((void*)g_power_after_mw, 0, sizeof(g_power_after_mw));
    memset((void*)g_power_avg_mw, 0, sizeof(g_power_avg_mw));
    memset((void*)g_current_before_ma, 0, sizeof(g_current_before_ma));
    memset((void*)g_current_after_ma, 0, sizeof(g_current_after_ma));
    memset((void*)g_bus_before_mv, 0, sizeof(g_bus_before_mv));
    memset((void*)g_bus_after_mv, 0, sizeof(g_bus_after_mv));
    memset((void*)g_energy_dyn_nj, 0, sizeof(g_energy_dyn_nj));
    memset((void*)g_case_energy_dyn_nj, 0, sizeof(g_case_energy_dyn_nj));
    g_total_energy_dyn_nj = 0;
    g_idle_power_mw = 0;
    g_idle_current_ma = 0;
    g_idle_bus_mv = 0;
    g_ina260_init_status = 0xFFFFFFFFU;
    g_ina260_last_status = 0;
    g_ina260_ok = 0;
    g_ina260_device_id_used = 0xFFFFFFFFU;
    g_ina260_cfg_baseaddr = 0U;
    g_ina260_probe_status_dev0 = 0xFFFFFFFFU;
    g_ina260_probe_status_dev1 = 0xFFFFFFFFU;
    g_ina260_debug_step  = 0U;
    g_ina260_debug_reg   = 0U;
    g_ina260_debug_wait1 = 0U;
    g_ina260_debug_send  = 0U;
    g_ina260_debug_wait2 = 0U;
    g_ina260_debug_recv  = 0U;
    g_ina260_debug_wait3 = 0U;

    xil_printf("\r\n=== GEMM BETO phase B: 3 casos embebidos (00/01/02) ===\r\n");
    xil_printf("GEMM_BASE = 0x%08lx\r\n", (unsigned long)GEMM_BASE);
    xil_printf("COUNTS_PER_SECOND = %lu\r\n", (unsigned long)g_counts_per_second);

    ina_status = ina260_init();
    g_ina260_init_status = (uint32_t)ina_status;

    if (ina_status == XST_SUCCESS) {
        if (ina260_sample((uint32_t *)&g_idle_power_mw,
                          (int32_t  *)&g_idle_current_ma,
                          (uint32_t *)&g_idle_bus_mv) == XST_SUCCESS) {
            g_ina260_ok = 1U;
            xil_printf("INA260 OK: dev=%lu  base=0x%08lx  addr=0x%02lx  idleP=%lu mW  idleI=%ld mA  idleV=%lu mV\r\n",
                       (unsigned long)g_ina260_device_id_used,
                       (unsigned long)g_ina260_cfg_baseaddr,
                       (unsigned long)g_ina260_addr,
                       (unsigned long)g_idle_power_mw,
                       (long)g_idle_current_ma,
                       (unsigned long)g_idle_bus_mv);
        } else {
            xil_printf("INA260 init OK pero fallo lectura inicial: dev=%lu base=0x%08lx last=%lu step=%lu reg=0x%02lx w1=%lu send=%lu w2=%lu recv=%lu w3=%lu\r\n",
                       (unsigned long)g_ina260_device_id_used,
                       (unsigned long)g_ina260_cfg_baseaddr,
                       (unsigned long)g_ina260_last_status,
                       (unsigned long)g_ina260_debug_step,
                       (unsigned long)g_ina260_debug_reg,
                       (unsigned long)g_ina260_debug_wait1,
                       (unsigned long)g_ina260_debug_send,
                       (unsigned long)g_ina260_debug_wait2,
                       (unsigned long)g_ina260_debug_recv,
                       (unsigned long)g_ina260_debug_wait3);
        }
    } else {
        xil_printf("INA260 no disponible en bare-metal; dev1=%lu dev0=%lu\r\n",
                   (unsigned long)g_ina260_probe_status_dev1,
                   (unsigned long)g_ina260_probe_status_dev0);
    }

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
