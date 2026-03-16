set moduleName gemm_int8_Pipeline_VITIS_LOOP_70_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {gemm_int8_Pipeline_VITIS_LOOP_70_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem1 int 8 regular {axi_master 0}  }
	{ Wtile int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_31 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_30 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_29 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_28 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_27 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_26 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_25 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_24 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_23 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_22 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_21 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_20 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_19 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_18 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_17 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_16 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_15 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_14 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_13 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_12 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_11 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_10 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_9 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_8 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_7 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_6 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_5 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_4 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_3 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_2 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Wtile_1 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ zext_ln53 int 10 regular  }
	{ add_ln69 int 64 regular  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "W","offset": { "type": "dynamic","port_name": "W","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "Wtile", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_31", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_30", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_29", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_28", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_27", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_26", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_25", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_24", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_23", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_22", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_21", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_20", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_19", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_18", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_17", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_16", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_15", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_14", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_13", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_12", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_11", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_10", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_9", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_8", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Wtile_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln53", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln69", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 182
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 0 } 
	{ Wtile_address0 sc_out sc_lv 5 signal 1 } 
	{ Wtile_ce0 sc_out sc_logic 1 signal 1 } 
	{ Wtile_we0 sc_out sc_logic 1 signal 1 } 
	{ Wtile_d0 sc_out sc_lv 8 signal 1 } 
	{ Wtile_31_address0 sc_out sc_lv 5 signal 2 } 
	{ Wtile_31_ce0 sc_out sc_logic 1 signal 2 } 
	{ Wtile_31_we0 sc_out sc_logic 1 signal 2 } 
	{ Wtile_31_d0 sc_out sc_lv 8 signal 2 } 
	{ Wtile_30_address0 sc_out sc_lv 5 signal 3 } 
	{ Wtile_30_ce0 sc_out sc_logic 1 signal 3 } 
	{ Wtile_30_we0 sc_out sc_logic 1 signal 3 } 
	{ Wtile_30_d0 sc_out sc_lv 8 signal 3 } 
	{ Wtile_29_address0 sc_out sc_lv 5 signal 4 } 
	{ Wtile_29_ce0 sc_out sc_logic 1 signal 4 } 
	{ Wtile_29_we0 sc_out sc_logic 1 signal 4 } 
	{ Wtile_29_d0 sc_out sc_lv 8 signal 4 } 
	{ Wtile_28_address0 sc_out sc_lv 5 signal 5 } 
	{ Wtile_28_ce0 sc_out sc_logic 1 signal 5 } 
	{ Wtile_28_we0 sc_out sc_logic 1 signal 5 } 
	{ Wtile_28_d0 sc_out sc_lv 8 signal 5 } 
	{ Wtile_27_address0 sc_out sc_lv 5 signal 6 } 
	{ Wtile_27_ce0 sc_out sc_logic 1 signal 6 } 
	{ Wtile_27_we0 sc_out sc_logic 1 signal 6 } 
	{ Wtile_27_d0 sc_out sc_lv 8 signal 6 } 
	{ Wtile_26_address0 sc_out sc_lv 5 signal 7 } 
	{ Wtile_26_ce0 sc_out sc_logic 1 signal 7 } 
	{ Wtile_26_we0 sc_out sc_logic 1 signal 7 } 
	{ Wtile_26_d0 sc_out sc_lv 8 signal 7 } 
	{ Wtile_25_address0 sc_out sc_lv 5 signal 8 } 
	{ Wtile_25_ce0 sc_out sc_logic 1 signal 8 } 
	{ Wtile_25_we0 sc_out sc_logic 1 signal 8 } 
	{ Wtile_25_d0 sc_out sc_lv 8 signal 8 } 
	{ Wtile_24_address0 sc_out sc_lv 5 signal 9 } 
	{ Wtile_24_ce0 sc_out sc_logic 1 signal 9 } 
	{ Wtile_24_we0 sc_out sc_logic 1 signal 9 } 
	{ Wtile_24_d0 sc_out sc_lv 8 signal 9 } 
	{ Wtile_23_address0 sc_out sc_lv 5 signal 10 } 
	{ Wtile_23_ce0 sc_out sc_logic 1 signal 10 } 
	{ Wtile_23_we0 sc_out sc_logic 1 signal 10 } 
	{ Wtile_23_d0 sc_out sc_lv 8 signal 10 } 
	{ Wtile_22_address0 sc_out sc_lv 5 signal 11 } 
	{ Wtile_22_ce0 sc_out sc_logic 1 signal 11 } 
	{ Wtile_22_we0 sc_out sc_logic 1 signal 11 } 
	{ Wtile_22_d0 sc_out sc_lv 8 signal 11 } 
	{ Wtile_21_address0 sc_out sc_lv 5 signal 12 } 
	{ Wtile_21_ce0 sc_out sc_logic 1 signal 12 } 
	{ Wtile_21_we0 sc_out sc_logic 1 signal 12 } 
	{ Wtile_21_d0 sc_out sc_lv 8 signal 12 } 
	{ Wtile_20_address0 sc_out sc_lv 5 signal 13 } 
	{ Wtile_20_ce0 sc_out sc_logic 1 signal 13 } 
	{ Wtile_20_we0 sc_out sc_logic 1 signal 13 } 
	{ Wtile_20_d0 sc_out sc_lv 8 signal 13 } 
	{ Wtile_19_address0 sc_out sc_lv 5 signal 14 } 
	{ Wtile_19_ce0 sc_out sc_logic 1 signal 14 } 
	{ Wtile_19_we0 sc_out sc_logic 1 signal 14 } 
	{ Wtile_19_d0 sc_out sc_lv 8 signal 14 } 
	{ Wtile_18_address0 sc_out sc_lv 5 signal 15 } 
	{ Wtile_18_ce0 sc_out sc_logic 1 signal 15 } 
	{ Wtile_18_we0 sc_out sc_logic 1 signal 15 } 
	{ Wtile_18_d0 sc_out sc_lv 8 signal 15 } 
	{ Wtile_17_address0 sc_out sc_lv 5 signal 16 } 
	{ Wtile_17_ce0 sc_out sc_logic 1 signal 16 } 
	{ Wtile_17_we0 sc_out sc_logic 1 signal 16 } 
	{ Wtile_17_d0 sc_out sc_lv 8 signal 16 } 
	{ Wtile_16_address0 sc_out sc_lv 5 signal 17 } 
	{ Wtile_16_ce0 sc_out sc_logic 1 signal 17 } 
	{ Wtile_16_we0 sc_out sc_logic 1 signal 17 } 
	{ Wtile_16_d0 sc_out sc_lv 8 signal 17 } 
	{ Wtile_15_address0 sc_out sc_lv 5 signal 18 } 
	{ Wtile_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ Wtile_15_we0 sc_out sc_logic 1 signal 18 } 
	{ Wtile_15_d0 sc_out sc_lv 8 signal 18 } 
	{ Wtile_14_address0 sc_out sc_lv 5 signal 19 } 
	{ Wtile_14_ce0 sc_out sc_logic 1 signal 19 } 
	{ Wtile_14_we0 sc_out sc_logic 1 signal 19 } 
	{ Wtile_14_d0 sc_out sc_lv 8 signal 19 } 
	{ Wtile_13_address0 sc_out sc_lv 5 signal 20 } 
	{ Wtile_13_ce0 sc_out sc_logic 1 signal 20 } 
	{ Wtile_13_we0 sc_out sc_logic 1 signal 20 } 
	{ Wtile_13_d0 sc_out sc_lv 8 signal 20 } 
	{ Wtile_12_address0 sc_out sc_lv 5 signal 21 } 
	{ Wtile_12_ce0 sc_out sc_logic 1 signal 21 } 
	{ Wtile_12_we0 sc_out sc_logic 1 signal 21 } 
	{ Wtile_12_d0 sc_out sc_lv 8 signal 21 } 
	{ Wtile_11_address0 sc_out sc_lv 5 signal 22 } 
	{ Wtile_11_ce0 sc_out sc_logic 1 signal 22 } 
	{ Wtile_11_we0 sc_out sc_logic 1 signal 22 } 
	{ Wtile_11_d0 sc_out sc_lv 8 signal 22 } 
	{ Wtile_10_address0 sc_out sc_lv 5 signal 23 } 
	{ Wtile_10_ce0 sc_out sc_logic 1 signal 23 } 
	{ Wtile_10_we0 sc_out sc_logic 1 signal 23 } 
	{ Wtile_10_d0 sc_out sc_lv 8 signal 23 } 
	{ Wtile_9_address0 sc_out sc_lv 5 signal 24 } 
	{ Wtile_9_ce0 sc_out sc_logic 1 signal 24 } 
	{ Wtile_9_we0 sc_out sc_logic 1 signal 24 } 
	{ Wtile_9_d0 sc_out sc_lv 8 signal 24 } 
	{ Wtile_8_address0 sc_out sc_lv 5 signal 25 } 
	{ Wtile_8_ce0 sc_out sc_logic 1 signal 25 } 
	{ Wtile_8_we0 sc_out sc_logic 1 signal 25 } 
	{ Wtile_8_d0 sc_out sc_lv 8 signal 25 } 
	{ Wtile_7_address0 sc_out sc_lv 5 signal 26 } 
	{ Wtile_7_ce0 sc_out sc_logic 1 signal 26 } 
	{ Wtile_7_we0 sc_out sc_logic 1 signal 26 } 
	{ Wtile_7_d0 sc_out sc_lv 8 signal 26 } 
	{ Wtile_6_address0 sc_out sc_lv 5 signal 27 } 
	{ Wtile_6_ce0 sc_out sc_logic 1 signal 27 } 
	{ Wtile_6_we0 sc_out sc_logic 1 signal 27 } 
	{ Wtile_6_d0 sc_out sc_lv 8 signal 27 } 
	{ Wtile_5_address0 sc_out sc_lv 5 signal 28 } 
	{ Wtile_5_ce0 sc_out sc_logic 1 signal 28 } 
	{ Wtile_5_we0 sc_out sc_logic 1 signal 28 } 
	{ Wtile_5_d0 sc_out sc_lv 8 signal 28 } 
	{ Wtile_4_address0 sc_out sc_lv 5 signal 29 } 
	{ Wtile_4_ce0 sc_out sc_logic 1 signal 29 } 
	{ Wtile_4_we0 sc_out sc_logic 1 signal 29 } 
	{ Wtile_4_d0 sc_out sc_lv 8 signal 29 } 
	{ Wtile_3_address0 sc_out sc_lv 5 signal 30 } 
	{ Wtile_3_ce0 sc_out sc_logic 1 signal 30 } 
	{ Wtile_3_we0 sc_out sc_logic 1 signal 30 } 
	{ Wtile_3_d0 sc_out sc_lv 8 signal 30 } 
	{ Wtile_2_address0 sc_out sc_lv 5 signal 31 } 
	{ Wtile_2_ce0 sc_out sc_logic 1 signal 31 } 
	{ Wtile_2_we0 sc_out sc_logic 1 signal 31 } 
	{ Wtile_2_d0 sc_out sc_lv 8 signal 31 } 
	{ Wtile_1_address0 sc_out sc_lv 5 signal 32 } 
	{ Wtile_1_ce0 sc_out sc_logic 1 signal 32 } 
	{ Wtile_1_we0 sc_out sc_logic 1 signal 32 } 
	{ Wtile_1_d0 sc_out sc_lv 8 signal 32 } 
	{ zext_ln53 sc_in sc_lv 10 signal 33 } 
	{ add_ln69 sc_in sc_lv 64 signal 34 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "Wtile_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile", "role": "address0" }} , 
 	{ "name": "Wtile_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile", "role": "ce0" }} , 
 	{ "name": "Wtile_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile", "role": "we0" }} , 
 	{ "name": "Wtile_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile", "role": "d0" }} , 
 	{ "name": "Wtile_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_31", "role": "address0" }} , 
 	{ "name": "Wtile_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_31", "role": "ce0" }} , 
 	{ "name": "Wtile_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_31", "role": "we0" }} , 
 	{ "name": "Wtile_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_31", "role": "d0" }} , 
 	{ "name": "Wtile_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_30", "role": "address0" }} , 
 	{ "name": "Wtile_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_30", "role": "ce0" }} , 
 	{ "name": "Wtile_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_30", "role": "we0" }} , 
 	{ "name": "Wtile_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_30", "role": "d0" }} , 
 	{ "name": "Wtile_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_29", "role": "address0" }} , 
 	{ "name": "Wtile_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_29", "role": "ce0" }} , 
 	{ "name": "Wtile_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_29", "role": "we0" }} , 
 	{ "name": "Wtile_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_29", "role": "d0" }} , 
 	{ "name": "Wtile_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_28", "role": "address0" }} , 
 	{ "name": "Wtile_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_28", "role": "ce0" }} , 
 	{ "name": "Wtile_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_28", "role": "we0" }} , 
 	{ "name": "Wtile_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_28", "role": "d0" }} , 
 	{ "name": "Wtile_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_27", "role": "address0" }} , 
 	{ "name": "Wtile_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_27", "role": "ce0" }} , 
 	{ "name": "Wtile_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_27", "role": "we0" }} , 
 	{ "name": "Wtile_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_27", "role": "d0" }} , 
 	{ "name": "Wtile_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_26", "role": "address0" }} , 
 	{ "name": "Wtile_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_26", "role": "ce0" }} , 
 	{ "name": "Wtile_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_26", "role": "we0" }} , 
 	{ "name": "Wtile_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_26", "role": "d0" }} , 
 	{ "name": "Wtile_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_25", "role": "address0" }} , 
 	{ "name": "Wtile_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_25", "role": "ce0" }} , 
 	{ "name": "Wtile_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_25", "role": "we0" }} , 
 	{ "name": "Wtile_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_25", "role": "d0" }} , 
 	{ "name": "Wtile_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_24", "role": "address0" }} , 
 	{ "name": "Wtile_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_24", "role": "ce0" }} , 
 	{ "name": "Wtile_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_24", "role": "we0" }} , 
 	{ "name": "Wtile_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_24", "role": "d0" }} , 
 	{ "name": "Wtile_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_23", "role": "address0" }} , 
 	{ "name": "Wtile_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_23", "role": "ce0" }} , 
 	{ "name": "Wtile_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_23", "role": "we0" }} , 
 	{ "name": "Wtile_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_23", "role": "d0" }} , 
 	{ "name": "Wtile_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_22", "role": "address0" }} , 
 	{ "name": "Wtile_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_22", "role": "ce0" }} , 
 	{ "name": "Wtile_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_22", "role": "we0" }} , 
 	{ "name": "Wtile_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_22", "role": "d0" }} , 
 	{ "name": "Wtile_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_21", "role": "address0" }} , 
 	{ "name": "Wtile_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_21", "role": "ce0" }} , 
 	{ "name": "Wtile_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_21", "role": "we0" }} , 
 	{ "name": "Wtile_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_21", "role": "d0" }} , 
 	{ "name": "Wtile_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_20", "role": "address0" }} , 
 	{ "name": "Wtile_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_20", "role": "ce0" }} , 
 	{ "name": "Wtile_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_20", "role": "we0" }} , 
 	{ "name": "Wtile_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_20", "role": "d0" }} , 
 	{ "name": "Wtile_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_19", "role": "address0" }} , 
 	{ "name": "Wtile_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_19", "role": "ce0" }} , 
 	{ "name": "Wtile_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_19", "role": "we0" }} , 
 	{ "name": "Wtile_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_19", "role": "d0" }} , 
 	{ "name": "Wtile_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_18", "role": "address0" }} , 
 	{ "name": "Wtile_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_18", "role": "ce0" }} , 
 	{ "name": "Wtile_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_18", "role": "we0" }} , 
 	{ "name": "Wtile_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_18", "role": "d0" }} , 
 	{ "name": "Wtile_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_17", "role": "address0" }} , 
 	{ "name": "Wtile_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_17", "role": "ce0" }} , 
 	{ "name": "Wtile_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_17", "role": "we0" }} , 
 	{ "name": "Wtile_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_17", "role": "d0" }} , 
 	{ "name": "Wtile_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_16", "role": "address0" }} , 
 	{ "name": "Wtile_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_16", "role": "ce0" }} , 
 	{ "name": "Wtile_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_16", "role": "we0" }} , 
 	{ "name": "Wtile_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_16", "role": "d0" }} , 
 	{ "name": "Wtile_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_15", "role": "address0" }} , 
 	{ "name": "Wtile_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_15", "role": "ce0" }} , 
 	{ "name": "Wtile_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_15", "role": "we0" }} , 
 	{ "name": "Wtile_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_15", "role": "d0" }} , 
 	{ "name": "Wtile_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_14", "role": "address0" }} , 
 	{ "name": "Wtile_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_14", "role": "ce0" }} , 
 	{ "name": "Wtile_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_14", "role": "we0" }} , 
 	{ "name": "Wtile_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_14", "role": "d0" }} , 
 	{ "name": "Wtile_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_13", "role": "address0" }} , 
 	{ "name": "Wtile_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_13", "role": "ce0" }} , 
 	{ "name": "Wtile_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_13", "role": "we0" }} , 
 	{ "name": "Wtile_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_13", "role": "d0" }} , 
 	{ "name": "Wtile_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_12", "role": "address0" }} , 
 	{ "name": "Wtile_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_12", "role": "ce0" }} , 
 	{ "name": "Wtile_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_12", "role": "we0" }} , 
 	{ "name": "Wtile_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_12", "role": "d0" }} , 
 	{ "name": "Wtile_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_11", "role": "address0" }} , 
 	{ "name": "Wtile_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_11", "role": "ce0" }} , 
 	{ "name": "Wtile_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_11", "role": "we0" }} , 
 	{ "name": "Wtile_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_11", "role": "d0" }} , 
 	{ "name": "Wtile_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_10", "role": "address0" }} , 
 	{ "name": "Wtile_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_10", "role": "ce0" }} , 
 	{ "name": "Wtile_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_10", "role": "we0" }} , 
 	{ "name": "Wtile_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_10", "role": "d0" }} , 
 	{ "name": "Wtile_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_9", "role": "address0" }} , 
 	{ "name": "Wtile_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_9", "role": "ce0" }} , 
 	{ "name": "Wtile_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_9", "role": "we0" }} , 
 	{ "name": "Wtile_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_9", "role": "d0" }} , 
 	{ "name": "Wtile_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_8", "role": "address0" }} , 
 	{ "name": "Wtile_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_8", "role": "ce0" }} , 
 	{ "name": "Wtile_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_8", "role": "we0" }} , 
 	{ "name": "Wtile_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_8", "role": "d0" }} , 
 	{ "name": "Wtile_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_7", "role": "address0" }} , 
 	{ "name": "Wtile_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_7", "role": "ce0" }} , 
 	{ "name": "Wtile_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_7", "role": "we0" }} , 
 	{ "name": "Wtile_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_7", "role": "d0" }} , 
 	{ "name": "Wtile_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_6", "role": "address0" }} , 
 	{ "name": "Wtile_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_6", "role": "ce0" }} , 
 	{ "name": "Wtile_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_6", "role": "we0" }} , 
 	{ "name": "Wtile_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_6", "role": "d0" }} , 
 	{ "name": "Wtile_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_5", "role": "address0" }} , 
 	{ "name": "Wtile_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_5", "role": "ce0" }} , 
 	{ "name": "Wtile_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_5", "role": "we0" }} , 
 	{ "name": "Wtile_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_5", "role": "d0" }} , 
 	{ "name": "Wtile_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_4", "role": "address0" }} , 
 	{ "name": "Wtile_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_4", "role": "ce0" }} , 
 	{ "name": "Wtile_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_4", "role": "we0" }} , 
 	{ "name": "Wtile_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_4", "role": "d0" }} , 
 	{ "name": "Wtile_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_3", "role": "address0" }} , 
 	{ "name": "Wtile_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_3", "role": "ce0" }} , 
 	{ "name": "Wtile_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_3", "role": "we0" }} , 
 	{ "name": "Wtile_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_3", "role": "d0" }} , 
 	{ "name": "Wtile_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_2", "role": "address0" }} , 
 	{ "name": "Wtile_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_2", "role": "ce0" }} , 
 	{ "name": "Wtile_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_2", "role": "we0" }} , 
 	{ "name": "Wtile_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_2", "role": "d0" }} , 
 	{ "name": "Wtile_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Wtile_1", "role": "address0" }} , 
 	{ "name": "Wtile_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_1", "role": "ce0" }} , 
 	{ "name": "Wtile_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Wtile_1", "role": "we0" }} , 
 	{ "name": "Wtile_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Wtile_1", "role": "d0" }} , 
 	{ "name": "zext_ln53", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln53", "role": "default" }} , 
 	{ "name": "add_ln69", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln69", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "gemm_int8_Pipeline_VITIS_LOOP_70_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1035", "EstimateLatencyMax" : "1035",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"}]},
			{"Name" : "Wtile", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln69", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "load_Wtile_VITIS_LOOP_70_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemm_int8_Pipeline_VITIS_LOOP_70_4 {
		gmem1 {Type I LastRead 9 FirstWrite -1}
		Wtile {Type O LastRead -1 FirstWrite 10}
		Wtile_31 {Type O LastRead -1 FirstWrite 10}
		Wtile_30 {Type O LastRead -1 FirstWrite 10}
		Wtile_29 {Type O LastRead -1 FirstWrite 10}
		Wtile_28 {Type O LastRead -1 FirstWrite 10}
		Wtile_27 {Type O LastRead -1 FirstWrite 10}
		Wtile_26 {Type O LastRead -1 FirstWrite 10}
		Wtile_25 {Type O LastRead -1 FirstWrite 10}
		Wtile_24 {Type O LastRead -1 FirstWrite 10}
		Wtile_23 {Type O LastRead -1 FirstWrite 10}
		Wtile_22 {Type O LastRead -1 FirstWrite 10}
		Wtile_21 {Type O LastRead -1 FirstWrite 10}
		Wtile_20 {Type O LastRead -1 FirstWrite 10}
		Wtile_19 {Type O LastRead -1 FirstWrite 10}
		Wtile_18 {Type O LastRead -1 FirstWrite 10}
		Wtile_17 {Type O LastRead -1 FirstWrite 10}
		Wtile_16 {Type O LastRead -1 FirstWrite 10}
		Wtile_15 {Type O LastRead -1 FirstWrite 10}
		Wtile_14 {Type O LastRead -1 FirstWrite 10}
		Wtile_13 {Type O LastRead -1 FirstWrite 10}
		Wtile_12 {Type O LastRead -1 FirstWrite 10}
		Wtile_11 {Type O LastRead -1 FirstWrite 10}
		Wtile_10 {Type O LastRead -1 FirstWrite 10}
		Wtile_9 {Type O LastRead -1 FirstWrite 10}
		Wtile_8 {Type O LastRead -1 FirstWrite 10}
		Wtile_7 {Type O LastRead -1 FirstWrite 10}
		Wtile_6 {Type O LastRead -1 FirstWrite 10}
		Wtile_5 {Type O LastRead -1 FirstWrite 10}
		Wtile_4 {Type O LastRead -1 FirstWrite 10}
		Wtile_3 {Type O LastRead -1 FirstWrite 10}
		Wtile_2 {Type O LastRead -1 FirstWrite 10}
		Wtile_1 {Type O LastRead -1 FirstWrite 10}
		zext_ln53 {Type I LastRead 0 FirstWrite -1}
		add_ln69 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1035", "Max" : "1035"}
	, {"Name" : "Interval", "Min" : "1035", "Max" : "1035"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 8 }  { m_axi_gmem1_WSTRB STRB 1 1 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 8 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 11 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	Wtile { ap_memory {  { Wtile_address0 mem_address 1 5 }  { Wtile_ce0 mem_ce 1 1 }  { Wtile_we0 mem_we 1 1 }  { Wtile_d0 mem_din 1 8 } } }
	Wtile_31 { ap_memory {  { Wtile_31_address0 mem_address 1 5 }  { Wtile_31_ce0 mem_ce 1 1 }  { Wtile_31_we0 mem_we 1 1 }  { Wtile_31_d0 mem_din 1 8 } } }
	Wtile_30 { ap_memory {  { Wtile_30_address0 mem_address 1 5 }  { Wtile_30_ce0 mem_ce 1 1 }  { Wtile_30_we0 mem_we 1 1 }  { Wtile_30_d0 mem_din 1 8 } } }
	Wtile_29 { ap_memory {  { Wtile_29_address0 mem_address 1 5 }  { Wtile_29_ce0 mem_ce 1 1 }  { Wtile_29_we0 mem_we 1 1 }  { Wtile_29_d0 mem_din 1 8 } } }
	Wtile_28 { ap_memory {  { Wtile_28_address0 mem_address 1 5 }  { Wtile_28_ce0 mem_ce 1 1 }  { Wtile_28_we0 mem_we 1 1 }  { Wtile_28_d0 mem_din 1 8 } } }
	Wtile_27 { ap_memory {  { Wtile_27_address0 mem_address 1 5 }  { Wtile_27_ce0 mem_ce 1 1 }  { Wtile_27_we0 mem_we 1 1 }  { Wtile_27_d0 mem_din 1 8 } } }
	Wtile_26 { ap_memory {  { Wtile_26_address0 mem_address 1 5 }  { Wtile_26_ce0 mem_ce 1 1 }  { Wtile_26_we0 mem_we 1 1 }  { Wtile_26_d0 mem_din 1 8 } } }
	Wtile_25 { ap_memory {  { Wtile_25_address0 mem_address 1 5 }  { Wtile_25_ce0 mem_ce 1 1 }  { Wtile_25_we0 mem_we 1 1 }  { Wtile_25_d0 mem_din 1 8 } } }
	Wtile_24 { ap_memory {  { Wtile_24_address0 mem_address 1 5 }  { Wtile_24_ce0 mem_ce 1 1 }  { Wtile_24_we0 mem_we 1 1 }  { Wtile_24_d0 mem_din 1 8 } } }
	Wtile_23 { ap_memory {  { Wtile_23_address0 mem_address 1 5 }  { Wtile_23_ce0 mem_ce 1 1 }  { Wtile_23_we0 mem_we 1 1 }  { Wtile_23_d0 mem_din 1 8 } } }
	Wtile_22 { ap_memory {  { Wtile_22_address0 mem_address 1 5 }  { Wtile_22_ce0 mem_ce 1 1 }  { Wtile_22_we0 mem_we 1 1 }  { Wtile_22_d0 mem_din 1 8 } } }
	Wtile_21 { ap_memory {  { Wtile_21_address0 mem_address 1 5 }  { Wtile_21_ce0 mem_ce 1 1 }  { Wtile_21_we0 mem_we 1 1 }  { Wtile_21_d0 mem_din 1 8 } } }
	Wtile_20 { ap_memory {  { Wtile_20_address0 mem_address 1 5 }  { Wtile_20_ce0 mem_ce 1 1 }  { Wtile_20_we0 mem_we 1 1 }  { Wtile_20_d0 mem_din 1 8 } } }
	Wtile_19 { ap_memory {  { Wtile_19_address0 mem_address 1 5 }  { Wtile_19_ce0 mem_ce 1 1 }  { Wtile_19_we0 mem_we 1 1 }  { Wtile_19_d0 mem_din 1 8 } } }
	Wtile_18 { ap_memory {  { Wtile_18_address0 mem_address 1 5 }  { Wtile_18_ce0 mem_ce 1 1 }  { Wtile_18_we0 mem_we 1 1 }  { Wtile_18_d0 mem_din 1 8 } } }
	Wtile_17 { ap_memory {  { Wtile_17_address0 mem_address 1 5 }  { Wtile_17_ce0 mem_ce 1 1 }  { Wtile_17_we0 mem_we 1 1 }  { Wtile_17_d0 mem_din 1 8 } } }
	Wtile_16 { ap_memory {  { Wtile_16_address0 mem_address 1 5 }  { Wtile_16_ce0 mem_ce 1 1 }  { Wtile_16_we0 mem_we 1 1 }  { Wtile_16_d0 mem_din 1 8 } } }
	Wtile_15 { ap_memory {  { Wtile_15_address0 mem_address 1 5 }  { Wtile_15_ce0 mem_ce 1 1 }  { Wtile_15_we0 mem_we 1 1 }  { Wtile_15_d0 mem_din 1 8 } } }
	Wtile_14 { ap_memory {  { Wtile_14_address0 mem_address 1 5 }  { Wtile_14_ce0 mem_ce 1 1 }  { Wtile_14_we0 mem_we 1 1 }  { Wtile_14_d0 mem_din 1 8 } } }
	Wtile_13 { ap_memory {  { Wtile_13_address0 mem_address 1 5 }  { Wtile_13_ce0 mem_ce 1 1 }  { Wtile_13_we0 mem_we 1 1 }  { Wtile_13_d0 mem_din 1 8 } } }
	Wtile_12 { ap_memory {  { Wtile_12_address0 mem_address 1 5 }  { Wtile_12_ce0 mem_ce 1 1 }  { Wtile_12_we0 mem_we 1 1 }  { Wtile_12_d0 mem_din 1 8 } } }
	Wtile_11 { ap_memory {  { Wtile_11_address0 mem_address 1 5 }  { Wtile_11_ce0 mem_ce 1 1 }  { Wtile_11_we0 mem_we 1 1 }  { Wtile_11_d0 mem_din 1 8 } } }
	Wtile_10 { ap_memory {  { Wtile_10_address0 mem_address 1 5 }  { Wtile_10_ce0 mem_ce 1 1 }  { Wtile_10_we0 mem_we 1 1 }  { Wtile_10_d0 mem_din 1 8 } } }
	Wtile_9 { ap_memory {  { Wtile_9_address0 mem_address 1 5 }  { Wtile_9_ce0 mem_ce 1 1 }  { Wtile_9_we0 mem_we 1 1 }  { Wtile_9_d0 mem_din 1 8 } } }
	Wtile_8 { ap_memory {  { Wtile_8_address0 mem_address 1 5 }  { Wtile_8_ce0 mem_ce 1 1 }  { Wtile_8_we0 mem_we 1 1 }  { Wtile_8_d0 mem_din 1 8 } } }
	Wtile_7 { ap_memory {  { Wtile_7_address0 mem_address 1 5 }  { Wtile_7_ce0 mem_ce 1 1 }  { Wtile_7_we0 mem_we 1 1 }  { Wtile_7_d0 mem_din 1 8 } } }
	Wtile_6 { ap_memory {  { Wtile_6_address0 mem_address 1 5 }  { Wtile_6_ce0 mem_ce 1 1 }  { Wtile_6_we0 mem_we 1 1 }  { Wtile_6_d0 mem_din 1 8 } } }
	Wtile_5 { ap_memory {  { Wtile_5_address0 mem_address 1 5 }  { Wtile_5_ce0 mem_ce 1 1 }  { Wtile_5_we0 mem_we 1 1 }  { Wtile_5_d0 mem_din 1 8 } } }
	Wtile_4 { ap_memory {  { Wtile_4_address0 mem_address 1 5 }  { Wtile_4_ce0 mem_ce 1 1 }  { Wtile_4_we0 mem_we 1 1 }  { Wtile_4_d0 mem_din 1 8 } } }
	Wtile_3 { ap_memory {  { Wtile_3_address0 mem_address 1 5 }  { Wtile_3_ce0 mem_ce 1 1 }  { Wtile_3_we0 mem_we 1 1 }  { Wtile_3_d0 mem_din 1 8 } } }
	Wtile_2 { ap_memory {  { Wtile_2_address0 mem_address 1 5 }  { Wtile_2_ce0 mem_ce 1 1 }  { Wtile_2_we0 mem_we 1 1 }  { Wtile_2_d0 mem_din 1 8 } } }
	Wtile_1 { ap_memory {  { Wtile_1_address0 mem_address 1 5 }  { Wtile_1_ce0 mem_ce 1 1 }  { Wtile_1_we0 mem_we 1 1 }  { Wtile_1_d0 mem_din 1 8 } } }
	zext_ln53 { ap_none {  { zext_ln53 in_data 0 10 } } }
	add_ln69 { ap_none {  { add_ln69 in_data 0 64 } } }
}
