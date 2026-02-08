############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project PBDHLS
set_top calculateLayer34
add_files ../CoDesign/CoDesignSoft/src/main.c
add_files ../CoDesign/CoDesignSoft/src/lw4.h
add_files ../CoDesign/CoDesignSoft/src/lw3.h
add_files ../CoDesign/CoDesignSoft/src/lw2.h
add_files ../CoDesign/CoDesignSoft/src/lw1.h
add_files ../CoDesign/CoDesignSoft/src/funcLayers.h
add_files -tb ../CoDesign/CoDesignSoft/src/main.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7vx485tffg1157-1}
create_clock -period 20 -name default
set_clock_uncertainty 2
source "./PBDHLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
