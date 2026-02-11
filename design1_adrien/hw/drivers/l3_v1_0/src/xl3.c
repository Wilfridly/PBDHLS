// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xl3.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XL3_CfgInitialize(XL3 *InstancePtr, XL3_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XL3_Start(XL3 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_AP_CTRL) & 0x80;
    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XL3_IsDone(XL3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XL3_IsIdle(XL3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XL3_IsReady(XL3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XL3_EnableAutoRestart(XL3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XL3_DisableAutoRestart(XL3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_AP_CTRL, 0);
}

void XL3_Set_Layer2_Neurons_CPU(XL3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_LAYER2_NEURONS_CPU_DATA, (u32)(Data));
    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_LAYER2_NEURONS_CPU_DATA + 4, (u32)(Data >> 32));
}

u64 XL3_Get_Layer2_Neurons_CPU(XL3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_LAYER2_NEURONS_CPU_DATA);
    Data += (u64)XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_LAYER2_NEURONS_CPU_DATA + 4) << 32;
    return Data;
}

void XL3_Set_Layer3_Neurons_CPU(XL3 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_LAYER3_NEURONS_CPU_DATA, (u32)(Data));
    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_LAYER3_NEURONS_CPU_DATA + 4, (u32)(Data >> 32));
}

u64 XL3_Get_Layer3_Neurons_CPU(XL3 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_LAYER3_NEURONS_CPU_DATA);
    Data += (u64)XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_LAYER3_NEURONS_CPU_DATA + 4) << 32;
    return Data;
}

void XL3_InterruptGlobalEnable(XL3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_GIE, 1);
}

void XL3_InterruptGlobalDisable(XL3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_GIE, 0);
}

void XL3_InterruptEnable(XL3 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_IER);
    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_IER, Register | Mask);
}

void XL3_InterruptDisable(XL3 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_IER);
    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_IER, Register & (~Mask));
}

void XL3_InterruptClear(XL3 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XL3_WriteReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_ISR, Mask);
}

u32 XL3_InterruptGetEnabled(XL3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_IER);
}

u32 XL3_InterruptGetStatus(XL3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XL3_ReadReg(InstancePtr->Control_BaseAddress, XL3_CONTROL_ADDR_ISR);
}

