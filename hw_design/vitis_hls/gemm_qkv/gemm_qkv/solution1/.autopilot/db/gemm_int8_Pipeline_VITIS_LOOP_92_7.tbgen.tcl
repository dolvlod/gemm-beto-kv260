set moduleName gemm_int8_Pipeline_VITIS_LOOP_92_7
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
set C_modelName {gemm_int8_Pipeline_VITIS_LOOP_92_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem2 int 32 regular {axi_master 1}  }
	{ sext_ln92 int 62 regular  }
	{ acc_load int 32 regular  }
	{ acc_1_load int 32 regular  }
	{ acc_2_load int 32 regular  }
	{ acc_3_load int 32 regular  }
	{ acc_4_load int 32 regular  }
	{ acc_5_load int 32 regular  }
	{ acc_6_load int 32 regular  }
	{ acc_7_load int 32 regular  }
	{ acc_8_load int 32 regular  }
	{ acc_9_load int 32 regular  }
	{ acc_10_load int 32 regular  }
	{ acc_11_load int 32 regular  }
	{ acc_12_load int 32 regular  }
	{ acc_13_load int 32 regular  }
	{ acc_14_load int 32 regular  }
	{ acc_15_load int 32 regular  }
	{ acc_16_load int 32 regular  }
	{ acc_17_load int 32 regular  }
	{ acc_18_load int 32 regular  }
	{ acc_19_load int 32 regular  }
	{ acc_20_load int 32 regular  }
	{ acc_21_load int 32 regular  }
	{ acc_22_load int 32 regular  }
	{ acc_23_load int 32 regular  }
	{ acc_24_load int 32 regular  }
	{ acc_25_load int 32 regular  }
	{ acc_26_load int 32 regular  }
	{ acc_27_load int 32 regular  }
	{ acc_28_load int 32 regular  }
	{ acc_29_load int 32 regular  }
	{ acc_30_load int 32 regular  }
	{ acc_31_load int 32 regular  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "Y","offset": { "type": "dynamic","port_name": "Y","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln92", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "acc_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_3_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_4_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_5_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_6_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_7_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_8_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_9_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_10_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_11_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_12_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_13_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_14_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_15_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_16_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_17_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_18_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_19_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_20_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_21_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_22_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_23_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_24_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_25_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_26_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_27_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_28_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_29_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_30_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_31_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln92 sc_in sc_lv 62 signal 1 } 
	{ acc_load sc_in sc_lv 32 signal 2 } 
	{ acc_1_load sc_in sc_lv 32 signal 3 } 
	{ acc_2_load sc_in sc_lv 32 signal 4 } 
	{ acc_3_load sc_in sc_lv 32 signal 5 } 
	{ acc_4_load sc_in sc_lv 32 signal 6 } 
	{ acc_5_load sc_in sc_lv 32 signal 7 } 
	{ acc_6_load sc_in sc_lv 32 signal 8 } 
	{ acc_7_load sc_in sc_lv 32 signal 9 } 
	{ acc_8_load sc_in sc_lv 32 signal 10 } 
	{ acc_9_load sc_in sc_lv 32 signal 11 } 
	{ acc_10_load sc_in sc_lv 32 signal 12 } 
	{ acc_11_load sc_in sc_lv 32 signal 13 } 
	{ acc_12_load sc_in sc_lv 32 signal 14 } 
	{ acc_13_load sc_in sc_lv 32 signal 15 } 
	{ acc_14_load sc_in sc_lv 32 signal 16 } 
	{ acc_15_load sc_in sc_lv 32 signal 17 } 
	{ acc_16_load sc_in sc_lv 32 signal 18 } 
	{ acc_17_load sc_in sc_lv 32 signal 19 } 
	{ acc_18_load sc_in sc_lv 32 signal 20 } 
	{ acc_19_load sc_in sc_lv 32 signal 21 } 
	{ acc_20_load sc_in sc_lv 32 signal 22 } 
	{ acc_21_load sc_in sc_lv 32 signal 23 } 
	{ acc_22_load sc_in sc_lv 32 signal 24 } 
	{ acc_23_load sc_in sc_lv 32 signal 25 } 
	{ acc_24_load sc_in sc_lv 32 signal 26 } 
	{ acc_25_load sc_in sc_lv 32 signal 27 } 
	{ acc_26_load sc_in sc_lv 32 signal 28 } 
	{ acc_27_load sc_in sc_lv 32 signal 29 } 
	{ acc_28_load sc_in sc_lv 32 signal 30 } 
	{ acc_29_load sc_in sc_lv 32 signal 31 } 
	{ acc_30_load sc_in sc_lv 32 signal 32 } 
	{ acc_31_load sc_in sc_lv 32 signal 33 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "sext_ln92", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln92", "role": "default" }} , 
 	{ "name": "acc_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_load", "role": "default" }} , 
 	{ "name": "acc_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_1_load", "role": "default" }} , 
 	{ "name": "acc_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_2_load", "role": "default" }} , 
 	{ "name": "acc_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_3_load", "role": "default" }} , 
 	{ "name": "acc_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_4_load", "role": "default" }} , 
 	{ "name": "acc_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_5_load", "role": "default" }} , 
 	{ "name": "acc_6_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_6_load", "role": "default" }} , 
 	{ "name": "acc_7_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_7_load", "role": "default" }} , 
 	{ "name": "acc_8_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_8_load", "role": "default" }} , 
 	{ "name": "acc_9_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_9_load", "role": "default" }} , 
 	{ "name": "acc_10_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_10_load", "role": "default" }} , 
 	{ "name": "acc_11_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_11_load", "role": "default" }} , 
 	{ "name": "acc_12_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_12_load", "role": "default" }} , 
 	{ "name": "acc_13_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_13_load", "role": "default" }} , 
 	{ "name": "acc_14_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_14_load", "role": "default" }} , 
 	{ "name": "acc_15_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_15_load", "role": "default" }} , 
 	{ "name": "acc_16_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_16_load", "role": "default" }} , 
 	{ "name": "acc_17_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_17_load", "role": "default" }} , 
 	{ "name": "acc_18_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_18_load", "role": "default" }} , 
 	{ "name": "acc_19_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_19_load", "role": "default" }} , 
 	{ "name": "acc_20_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_20_load", "role": "default" }} , 
 	{ "name": "acc_21_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_21_load", "role": "default" }} , 
 	{ "name": "acc_22_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_22_load", "role": "default" }} , 
 	{ "name": "acc_23_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_23_load", "role": "default" }} , 
 	{ "name": "acc_24_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_24_load", "role": "default" }} , 
 	{ "name": "acc_25_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_25_load", "role": "default" }} , 
 	{ "name": "acc_26_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_26_load", "role": "default" }} , 
 	{ "name": "acc_27_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_27_load", "role": "default" }} , 
 	{ "name": "acc_28_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_28_load", "role": "default" }} , 
 	{ "name": "acc_29_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_29_load", "role": "default" }} , 
 	{ "name": "acc_30_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_30_load", "role": "default" }} , 
 	{ "name": "acc_31_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_31_load", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "gemm_int8_Pipeline_VITIS_LOOP_92_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_8_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_9_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_10_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_11_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_12_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_13_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_14_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_15_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_16_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_17_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_18_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_19_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_20_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_21_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_22_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_23_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_24_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_25_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_26_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_27_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_28_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_29_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_30_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_31_load", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_5_32_1_1_U273", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemm_int8_Pipeline_VITIS_LOOP_92_7 {
		gmem2 {Type O LastRead -1 FirstWrite 1}
		sext_ln92 {Type I LastRead 0 FirstWrite -1}
		acc_load {Type I LastRead 0 FirstWrite -1}
		acc_1_load {Type I LastRead 0 FirstWrite -1}
		acc_2_load {Type I LastRead 0 FirstWrite -1}
		acc_3_load {Type I LastRead 0 FirstWrite -1}
		acc_4_load {Type I LastRead 0 FirstWrite -1}
		acc_5_load {Type I LastRead 0 FirstWrite -1}
		acc_6_load {Type I LastRead 0 FirstWrite -1}
		acc_7_load {Type I LastRead 0 FirstWrite -1}
		acc_8_load {Type I LastRead 0 FirstWrite -1}
		acc_9_load {Type I LastRead 0 FirstWrite -1}
		acc_10_load {Type I LastRead 0 FirstWrite -1}
		acc_11_load {Type I LastRead 0 FirstWrite -1}
		acc_12_load {Type I LastRead 0 FirstWrite -1}
		acc_13_load {Type I LastRead 0 FirstWrite -1}
		acc_14_load {Type I LastRead 0 FirstWrite -1}
		acc_15_load {Type I LastRead 0 FirstWrite -1}
		acc_16_load {Type I LastRead 0 FirstWrite -1}
		acc_17_load {Type I LastRead 0 FirstWrite -1}
		acc_18_load {Type I LastRead 0 FirstWrite -1}
		acc_19_load {Type I LastRead 0 FirstWrite -1}
		acc_20_load {Type I LastRead 0 FirstWrite -1}
		acc_21_load {Type I LastRead 0 FirstWrite -1}
		acc_22_load {Type I LastRead 0 FirstWrite -1}
		acc_23_load {Type I LastRead 0 FirstWrite -1}
		acc_24_load {Type I LastRead 0 FirstWrite -1}
		acc_25_load {Type I LastRead 0 FirstWrite -1}
		acc_26_load {Type I LastRead 0 FirstWrite -1}
		acc_27_load {Type I LastRead 0 FirstWrite -1}
		acc_28_load {Type I LastRead 0 FirstWrite -1}
		acc_29_load {Type I LastRead 0 FirstWrite -1}
		acc_30_load {Type I LastRead 0 FirstWrite -1}
		acc_31_load {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 32 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 32 }  { m_axi_gmem2_WSTRB STRB 1 4 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 32 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 32 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RFIFONUM LEN 0 9 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	sext_ln92 { ap_none {  { sext_ln92 in_data 0 62 } } }
	acc_load { ap_none {  { acc_load in_data 0 32 } } }
	acc_1_load { ap_none {  { acc_1_load in_data 0 32 } } }
	acc_2_load { ap_none {  { acc_2_load in_data 0 32 } } }
	acc_3_load { ap_none {  { acc_3_load in_data 0 32 } } }
	acc_4_load { ap_none {  { acc_4_load in_data 0 32 } } }
	acc_5_load { ap_none {  { acc_5_load in_data 0 32 } } }
	acc_6_load { ap_none {  { acc_6_load in_data 0 32 } } }
	acc_7_load { ap_none {  { acc_7_load in_data 0 32 } } }
	acc_8_load { ap_none {  { acc_8_load in_data 0 32 } } }
	acc_9_load { ap_none {  { acc_9_load in_data 0 32 } } }
	acc_10_load { ap_none {  { acc_10_load in_data 0 32 } } }
	acc_11_load { ap_none {  { acc_11_load in_data 0 32 } } }
	acc_12_load { ap_none {  { acc_12_load in_data 0 32 } } }
	acc_13_load { ap_none {  { acc_13_load in_data 0 32 } } }
	acc_14_load { ap_none {  { acc_14_load in_data 0 32 } } }
	acc_15_load { ap_none {  { acc_15_load in_data 0 32 } } }
	acc_16_load { ap_none {  { acc_16_load in_data 0 32 } } }
	acc_17_load { ap_none {  { acc_17_load in_data 0 32 } } }
	acc_18_load { ap_none {  { acc_18_load in_data 0 32 } } }
	acc_19_load { ap_none {  { acc_19_load in_data 0 32 } } }
	acc_20_load { ap_none {  { acc_20_load in_data 0 32 } } }
	acc_21_load { ap_none {  { acc_21_load in_data 0 32 } } }
	acc_22_load { ap_none {  { acc_22_load in_data 0 32 } } }
	acc_23_load { ap_none {  { acc_23_load in_data 0 32 } } }
	acc_24_load { ap_none {  { acc_24_load in_data 0 32 } } }
	acc_25_load { ap_none {  { acc_25_load in_data 0 32 } } }
	acc_26_load { ap_none {  { acc_26_load in_data 0 32 } } }
	acc_27_load { ap_none {  { acc_27_load in_data 0 32 } } }
	acc_28_load { ap_none {  { acc_28_load in_data 0 32 } } }
	acc_29_load { ap_none {  { acc_29_load in_data 0 32 } } }
	acc_30_load { ap_none {  { acc_30_load in_data 0 32 } } }
	acc_31_load { ap_none {  { acc_31_load in_data 0 32 } } }
}
