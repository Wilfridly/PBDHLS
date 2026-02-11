// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XL3_H
#define XL3_H

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
#include "xl3_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XL3_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XL3;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XL3_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XL3_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XL3_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XL3_ReadReg(BaseAddress, RegOffset) \
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
int XL3_Initialize(XL3 *InstancePtr, u16 DeviceId);
XL3_Config* XL3_LookupConfig(u16 DeviceId);
int XL3_CfgInitialize(XL3 *InstancePtr, XL3_Config *ConfigPtr);
#else
int XL3_Initialize(XL3 *InstancePtr, const char* InstanceName);
int XL3_Release(XL3 *InstancePtr);
#endif

void XL3_Start(XL3 *InstancePtr);
u32 XL3_IsDone(XL3 *InstancePtr);
u32 XL3_IsIdle(XL3 *InstancePtr);
u32 XL3_IsReady(XL3 *InstancePtr);
void XL3_EnableAutoRestart(XL3 *InstancePtr);
void XL3_DisableAutoRestart(XL3 *InstancePtr);

void XL3_Set_Layer2_Neurons_CPU(XL3 *InstancePtr, u64 Data);
u64 XL3_Get_Layer2_Neurons_CPU(XL3 *InstancePtr);
void XL3_Set_Layer3_Neurons_CPU(XL3 *InstancePtr, u64 Data);
u64 XL3_Get_Layer3_Neurons_CPU(XL3 *InstancePtr);

void XL3_InterruptGlobalEnable(XL3 *InstancePtr);
void XL3_InterruptGlobalDisable(XL3 *InstancePtr);
void XL3_InterruptEnable(XL3 *InstancePtr, u32 Mask);
void XL3_InterruptDisable(XL3 *InstancePtr, u32 Mask);
void XL3_InterruptClear(XL3 *InstancePtr, u32 Mask);
u32 XL3_InterruptGetEnabled(XL3 *InstancePtr);
u32 XL3_InterruptGetStatus(XL3 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
