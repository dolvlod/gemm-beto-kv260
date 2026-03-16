// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgemm_int8.h"

extern XGemm_int8_Config XGemm_int8_ConfigTable[];

XGemm_int8_Config *XGemm_int8_LookupConfig(u16 DeviceId) {
	XGemm_int8_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGEMM_INT8_NUM_INSTANCES; Index++) {
		if (XGemm_int8_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGemm_int8_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGemm_int8_Initialize(XGemm_int8 *InstancePtr, u16 DeviceId) {
	XGemm_int8_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGemm_int8_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGemm_int8_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

