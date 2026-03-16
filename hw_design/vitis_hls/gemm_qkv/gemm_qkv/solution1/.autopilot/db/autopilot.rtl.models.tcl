set SynModuleInfo {
  {SRCNAME gemm_int8_Pipeline_load_X_VITIS_LOOP_30_1 MODELNAME gemm_int8_Pipeline_load_X_VITIS_LOOP_30_1 RTLNAME gemm_int8_gemm_int8_Pipeline_load_X_VITIS_LOOP_30_1
    SUBMODULES {
      {MODELNAME gemm_int8_flow_control_loop_pipe_sequential_init RTLNAME gemm_int8_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gemm_int8_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2 MODELNAME gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2 RTLNAME gemm_int8_gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2}
  {SRCNAME gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3 MODELNAME gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3 RTLNAME gemm_int8_gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3}
  {SRCNAME gemm_int8_Pipeline_VITIS_LOOP_70_4 MODELNAME gemm_int8_Pipeline_VITIS_LOOP_70_4 RTLNAME gemm_int8_gemm_int8_Pipeline_VITIS_LOOP_70_4}
  {SRCNAME gemm_int8_Pipeline_VITIS_LOOP_78_5 MODELNAME gemm_int8_Pipeline_VITIS_LOOP_78_5 RTLNAME gemm_int8_gemm_int8_Pipeline_VITIS_LOOP_78_5
    SUBMODULES {
      {MODELNAME gemm_int8_mul_8s_8s_16_1_1 RTLNAME gemm_int8_mul_8s_8s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME gemm_int8_mux_32_5_32_1_1 RTLNAME gemm_int8_mux_32_5_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME gemm_int8_mac_muladd_8s_8s_16s_17_4_1 RTLNAME gemm_int8_mac_muladd_8s_8s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gemm_int8_mac_muladd_8s_8s_17s_32_4_1 RTLNAME gemm_int8_mac_muladd_8s_8s_17s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gemm_int8_mac_muladd_8s_8s_17s_17_4_1 RTLNAME gemm_int8_mac_muladd_8s_8s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gemm_int8_Pipeline_VITIS_LOOP_92_7 MODELNAME gemm_int8_Pipeline_VITIS_LOOP_92_7 RTLNAME gemm_int8_gemm_int8_Pipeline_VITIS_LOOP_92_7}
  {SRCNAME gemm_int8 MODELNAME gemm_int8 RTLNAME gemm_int8 IS_TOP 1
    SUBMODULES {
      {MODELNAME gemm_int8_Xbuf_RAM_2P_BRAM_1R1W RTLNAME gemm_int8_Xbuf_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gemm_int8_acc_RAM_AUTO_1R1W RTLNAME gemm_int8_acc_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gemm_int8_Xtile_RAM_AUTO_1R1W RTLNAME gemm_int8_Xtile_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gemm_int8_gmem0_m_axi RTLNAME gemm_int8_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_int8_gmem1_m_axi RTLNAME gemm_int8_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_int8_gmem2_m_axi RTLNAME gemm_int8_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_int8_control_s_axi RTLNAME gemm_int8_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
