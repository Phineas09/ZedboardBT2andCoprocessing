############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project coprocess
set_top xillybus_wrapper
add_files coprocess/example/src/main.c
add_files coprocess/example/src/xilly_debug.c
open_solution "example"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
config_interface  -expose_global -m_axi_addr64=0 -m_axi_offset off -register_io off -trim_dangling_port=0
config_sdx -optimization_level none -target none
config_export -vivado_optimization_level 2
#source "./coprocess/example/directives.tcl"
#csim_design
csynth_design
#cosim_design -tool modelsim
export_design -flow syn -rtl verilog -format syn_dcp
