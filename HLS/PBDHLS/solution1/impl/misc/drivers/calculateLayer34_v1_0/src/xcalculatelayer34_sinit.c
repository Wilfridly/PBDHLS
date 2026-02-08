// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcalculatelayer34.h"

extern XCalculatelayer34_Config XCalculatelayer34_ConfigTable[];

XCalculatelayer34_Config *XCalculatelayer34_LookupConfig(u16 DeviceId) {
	XCalculatelayer34_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCALCULATELAYER34_NUM_INSTANCES; Index++) {
		if (XCalculatelayer34_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCalculatelayer34_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalculatelayer34_Initialize(XCalculatelayer34 *InstancePtr, u16 DeviceId) {
	XCalculatelayer34_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalculatelayer34_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalculatelayer34_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

