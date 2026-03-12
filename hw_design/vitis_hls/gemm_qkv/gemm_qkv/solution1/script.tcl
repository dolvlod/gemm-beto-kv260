############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project gemm_qkv
set_top gemm_int8
add_files src/gemm_int8.cpp
add_files src/gemm_int8.cpp
add_files -tb tb/tb.cpp
add_files -tb tb/tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
#source "./gemm_qkv/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
