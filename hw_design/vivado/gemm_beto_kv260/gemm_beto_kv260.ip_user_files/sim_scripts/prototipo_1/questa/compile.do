vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_14
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_14
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_28

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_14 questa_lib/msim/axi_vip_v1_1_14
vmap zynq_ultra_ps_e_vip_v1_0_14 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_14
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_28 questa_lib/msim/axi_register_slice_v2_1_28

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/opt/Xilinx-2023.1/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_14 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_zynq_ultra_ps_e_0_0/sim/prototipo_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_acc_RAM_AUTO_1R1W.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_control_s_axi.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_flow_control_loop_pipe_sequential_init.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_gemm_int8_Pipeline_load_X_VITIS_LOOP_30_1.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_gemm_int8_Pipeline_VITIS_LOOP_70_4.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_gemm_int8_Pipeline_VITIS_LOOP_78_5.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_gemm_int8_Pipeline_VITIS_LOOP_92_7.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_gmem0_m_axi.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_gmem1_m_axi.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_gmem2_m_axi.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_mac_muladd_8s_8s_16s_17_4_1.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_mac_muladd_8s_8s_17s_17_4_1.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_mac_muladd_8s_8s_17s_32_4_1.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_mul_8s_8s_16_1_1.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_mux_32_5_32_1_1.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_Xbuf_RAM_2P_BRAM_1R1W.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8_Xtile_RAM_AUTO_1R1W.v" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4efb/hdl/verilog/gemm_int8.v" \
"../../../bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/sim/prototipo_1_gemm_int8_0_1.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/prototipo_1/ip/prototipo_1_rst_ps8_0_99M_0/sim/prototipo_1_rst_ps8_0_99M_0.vhd" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu  "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_b70c_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_b70c_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_b70c_arsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_b70c_rsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_b70c_awsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_b70c_wsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_b70c_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_b70c_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_b70c_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_b70c_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_b70c_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_b70c_sarn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_b70c_srn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_b70c_s01mmu_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_b70c_s01tr_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_b70c_s01sic_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_b70c_s01a2s_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_b70c_sarn_1.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_b70c_srn_1.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_b70c_s02mmu_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_b70c_s02tr_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_b70c_s02sic_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_b70c_s02a2s_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_b70c_sawn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_b70c_swn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_b70c_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_b70c_m00s2a_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_b70c_m00arn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_b70c_m00rn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_b70c_m00awn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_b70c_m00wn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_b70c_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_b70c_m00e_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_b70c_m01s2a_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_b70c_m01arn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_b70c_m01rn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_b70c_m01awn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_b70c_m01wn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_b70c_m01bn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_b70c_m01e_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_b70c_m02s2a_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_b70c_m02arn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_b70c_m02rn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_b70c_m02awn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_b70c_m02wn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_b70c_m02bn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_b70c_m02e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/bd_0/sim/bd_b70c.v" \

vlog -work axi_register_slice_v2_1_28 -64 -incr -mfcu  "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_0/sim/prototipo_1_smartconnect_0_0.v" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_0/sim/bd_77cd_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_1/sim/bd_77cd_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_2/sim/bd_77cd_arinsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_3/sim/bd_77cd_rinsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_4/sim/bd_77cd_awinsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_5/sim/bd_77cd_winsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_6/sim/bd_77cd_binsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_7/sim/bd_77cd_aroutsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_8/sim/bd_77cd_routsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_9/sim/bd_77cd_awoutsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_10/sim/bd_77cd_woutsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_11/sim/bd_77cd_boutsw_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_12/sim/bd_77cd_arni_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_13/sim/bd_77cd_rni_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_14/sim/bd_77cd_awni_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_15/sim/bd_77cd_wni_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_16/sim/bd_77cd_bni_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_17/sim/bd_77cd_s00mmu_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_18/sim/bd_77cd_s00tr_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_19/sim/bd_77cd_s00sic_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_20/sim/bd_77cd_s00a2s_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_21/sim/bd_77cd_sarn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_22/sim/bd_77cd_srn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_23/sim/bd_77cd_sawn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_24/sim/bd_77cd_swn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_25/sim/bd_77cd_sbn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_26/sim/bd_77cd_s01mmu_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_27/sim/bd_77cd_s01tr_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_28/sim/bd_77cd_s01sic_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_29/sim/bd_77cd_s01a2s_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_30/sim/bd_77cd_sarn_1.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_31/sim/bd_77cd_srn_1.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_32/sim/bd_77cd_sawn_1.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_33/sim/bd_77cd_swn_1.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_34/sim/bd_77cd_sbn_1.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_35/sim/bd_77cd_m00s2a_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_36/sim/bd_77cd_m00arn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_37/sim/bd_77cd_m00rn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_38/sim/bd_77cd_m00awn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_39/sim/bd_77cd_m00wn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_40/sim/bd_77cd_m00bn_0.sv" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/ip/ip_41/sim/bd_77cd_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/ec67/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f805/hdl" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ipshared/66be/hdl/verilog" "+incdir+../../../../gemm_beto_kv260.gen/sources_1/bd/prototipo_1/ip/prototipo_1_gemm_int8_0_1/drivers/gemm_int8_v1_0/src" "+incdir+/opt/Xilinx-2023.1/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/bd_0/sim/bd_77cd.v" \
"../../../bd/prototipo_1/ip/prototipo_1_smartconnect_0_1/sim/prototipo_1_smartconnect_0_1.v" \
"../../../bd/prototipo_1/sim/prototipo_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

