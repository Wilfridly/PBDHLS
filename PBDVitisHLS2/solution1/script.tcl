############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project PBDVitisHLS2
set_top l3
add_files ../PBDTemp/sourced/layers.c
add_files ../PBDTemp/sourced/layers.h
add_files ../PBDTemp/sourced/lw1.h
add_files ../PBDTemp/sourced/lw2.h
add_files ../PBDTemp/sourced/lw3.h
add_files ../PBDTemp/sourced/lw4.h
add_files -tb ../PBDTemp/sourced/testbench.c
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 20 -name default
#source "./PBDVitisHLS2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output D:/MASTER_SESI/M2/PBDTemp/export_Ip/export/l3.zip
