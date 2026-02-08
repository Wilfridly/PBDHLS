// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcalculatelayer34.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCalculatelayer34_CfgInitialize(XCalculatelayer34 *InstancePtr, XCalculatelayer34_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCalculatelayer34_Start(XCalculatelayer34 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCalculatelayer34_IsDone(XCalculatelayer34 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCalculatelayer34_IsIdle(XCalculatelayer34 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCalculatelayer34_IsReady(XCalculatelayer34 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCalculatelayer34_EnableAutoRestart(XCalculatelayer34 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCalculatelayer34_DisableAutoRestart(XCalculatelayer34 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_AP_CTRL, 0);
}

void XCalculatelayer34_Set_Layer2_Neurons_CPU(XCalculatelayer34 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_LAYER2_NEURONS_CPU_DATA, (u32)(Data));
    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_LAYER2_NEURONS_CPU_DATA + 4, (u32)(Data >> 32));
}

u64 XCalculatelayer34_Get_Layer2_Neurons_CPU(XCalculatelayer34 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_LAYER2_NEURONS_CPU_DATA);
    Data += (u64)XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_LAYER2_NEURONS_CPU_DATA + 4) << 32;
    return Data;
}

void XCalculatelayer34_Set_Layer4_Neurons_CPU(XCalculatelayer34 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_LAYER4_NEURONS_CPU_DATA, (u32)(Data));
    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_LAYER4_NEURONS_CPU_DATA + 4, (u32)(Data >> 32));
}

u64 XCalculatelayer34_Get_Layer4_Neurons_CPU(XCalculatelayer34 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_LAYER4_NEURONS_CPU_DATA);
    Data += (u64)XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_LAYER4_NEURONS_CPU_DATA + 4) << 32;
    return Data;
}

void XCalculatelayer34_InterruptGlobalEnable(XCalculatelayer34 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_GIE, 1);
}

void XCalculatelayer34_InterruptGlobalDisable(XCalculatelayer34 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_GIE, 0);
}

void XCalculatelayer34_InterruptEnable(XCalculatelayer34 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_IER);
    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_IER, Register | Mask);
}

void XCalculatelayer34_InterruptDisable(XCalculatelayer34 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_IER);
    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCalculatelayer34_InterruptClear(XCalculatelayer34 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer34_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_ISR, Mask);
}

u32 XCalculatelayer34_InterruptGetEnabled(XCalculatelayer34 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_IER);
}

u32 XCalculatelayer34_InterruptGetStatus(XCalculatelayer34 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalculatelayer34_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATELAYER34_CONTROL_ADDR_ISR);
}

