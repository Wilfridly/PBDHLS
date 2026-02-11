############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project PBDVitisHLS
set_top l3
add_files ../PBDTemp/sourced/layers.c
add_files ../PBDTemp/sourced/layers.h
add_files ../PBDTemp/sourced/lw1.h
add_files ../PBDTemp/sourced/lw2.h
add_files ../PBDTemp/sourced/lw3.h
add_files ../PBDTemp/sourced/lw4.h
add_files -tb ../PBDTemp/sourced/testbench.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 20 -name default
config_export -format ip_catalog -output D:/MASTER_SESI/M2/l3.zip -rtl verilog
set_clock_uncertainty 2
source "./PBDVitisHLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output D:/MASTER_SESI/M2/NNVitis/l3.zip
