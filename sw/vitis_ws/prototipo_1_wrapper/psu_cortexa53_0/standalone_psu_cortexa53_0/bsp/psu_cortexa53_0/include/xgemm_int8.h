// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XGEMM_INT8_H
#define XGEMM_INT8_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xgemm_int8_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XGemm_int8_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XGemm_int8;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGemm_int8_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGemm_int8_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGemm_int8_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGemm_int8_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XGemm_int8_Initialize(XGemm_int8 *InstancePtr, u16 DeviceId);
XGemm_int8_Config* XGemm_int8_LookupConfig(u16 DeviceId);
int XGemm_int8_CfgInitialize(XGemm_int8 *InstancePtr, XGemm_int8_Config *ConfigPtr);
#else
int XGemm_int8_Initialize(XGemm_int8 *InstancePtr, const char* InstanceName);
int XGemm_int8_Release(XGemm_int8 *InstancePtr);
#endif

void XGemm_int8_Start(XGemm_int8 *InstancePtr);
u32 XGemm_int8_IsDone(XGemm_int8 *InstancePtr);
u32 XGemm_int8_IsIdle(XGemm_int8 *InstancePtr);
u32 XGemm_int8_IsReady(XGemm_int8 *InstancePtr);
void XGemm_int8_EnableAutoRestart(XGemm_int8 *InstancePtr);
void XGemm_int8_DisableAutoRestart(XGemm_int8 *InstancePtr);

void XGemm_int8_Set_X(XGemm_int8 *InstancePtr, u64 Data);
u64 XGemm_int8_Get_X(XGemm_int8 *InstancePtr);
void XGemm_int8_Set_W(XGemm_int8 *InstancePtr, u64 Data);
u64 XGemm_int8_Get_W(XGemm_int8 *InstancePtr);
void XGemm_int8_Set_Y(XGemm_int8 *InstancePtr, u64 Data);
u64 XGemm_int8_Get_Y(XGemm_int8 *InstancePtr);

void XGemm_int8_InterruptGlobalEnable(XGemm_int8 *InstancePtr);
void XGemm_int8_InterruptGlobalDisable(XGemm_int8 *InstancePtr);
void XGemm_int8_InterruptEnable(XGemm_int8 *InstancePtr, u32 Mask);
void XGemm_int8_InterruptDisable(XGemm_int8 *InstancePtr, u32 Mask);
void XGemm_int8_InterruptClear(XGemm_int8 *InstancePtr, u32 Mask);
u32 XGemm_int8_InterruptGetEnabled(XGemm_int8 *InstancePtr);
u32 XGemm_int8_InterruptGetStatus(XGemm_int8 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
