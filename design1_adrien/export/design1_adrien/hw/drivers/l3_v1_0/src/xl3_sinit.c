// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xl3.h"

extern XL3_Config XL3_ConfigTable[];

XL3_Config *XL3_LookupConfig(u16 DeviceId) {
	XL3_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XL3_NUM_INSTANCES; Index++) {
		if (XL3_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XL3_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XL3_Initialize(XL3 *InstancePtr, u16 DeviceId) {
	XL3_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XL3_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XL3_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

