set moduleName gemm_int8
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {gemm_int8}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 8 regular {axi_master 0}  }
	{ gmem1 int 8 regular {axi_master 0}  }
	{ gmem2 int 32 regular {axi_master 1}  }
	{ X int 64 regular {axi_slave 0}  }
	{ W int 64 regular {axi_slave 0}  }
	{ Y int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "X","offset": { "type": "dynamic","port_name": "X","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "W","offset": { "type": "dynamic","port_name": "W","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "Y","offset": { "type": "dynamic","port_name": "Y","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "X", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "W", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "Y", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"gemm_int8","role":"start","value":"0","valid_bit":"0"},{"name":"gemm_int8","role":"continue","value":"0","valid_bit":"4"},{"name":"gemm_int8","role":"auto_start","value":"0","valid_bit":"7"},{"name":"X","role":"data","value":"16"},{"name":"W","role":"data","value":"28"},{"name":"Y","role":"data","value":"40"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"gemm_int8","role":"start","value":"0","valid_bit":"0"},{"name":"gemm_int8","role":"done","value":"0","valid_bit":"1"},{"name":"gemm_int8","role":"idle","value":"0","valid_bit":"2"},{"name":"gemm_int8","role":"ready","value":"0","valid_bit":"3"},{"name":"gemm_int8","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "100", "102", "104", "106", "141", "144", "145", "146", "147"],
		"CDFG" : "gemm_int8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2945582", "EstimateLatencyMax" : "2945582",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_gemm_int8_Pipeline_load_X_VITIS_LOOP_30_1_fu_1634", "Port" : "gmem0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_gemm_int8_Pipeline_VITIS_LOOP_70_4_fu_1718", "Port" : "gmem1", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_gemm_int8_Pipeline_VITIS_LOOP_92_7_fu_1924", "Port" : "gmem2", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "X", "Type" : "None", "Direction" : "I"},
			{"Name" : "W", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "compute", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state16"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "tile_k", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "store_Y", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state28"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "tile_m_tile_n", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state11"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xbuf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_5_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_6_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_8_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_9_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_10_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_11_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_12_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_13_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_14_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_15_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_16_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_17_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_18_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_19_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_20_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_21_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_22_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_23_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_24_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_25_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_26_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_27_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_28_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_29_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_30_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_31_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_1_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_2_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_3_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_4_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_5_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_6_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_7_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_8_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_9_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_10_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_11_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_12_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_13_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_14_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_15_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_16_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_17_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_18_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_19_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_20_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_21_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_22_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_23_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_24_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_25_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_26_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_27_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_28_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_29_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_30_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Xtile_31_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_1_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_2_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_3_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_4_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_5_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_6_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_7_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_8_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_9_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_10_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_11_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_12_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_13_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_14_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_15_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_16_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_17_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_18_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_19_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_20_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_21_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_22_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_23_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_24_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_25_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_26_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_27_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_28_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_29_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_30_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Wtile_31_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_load_X_VITIS_LOOP_30_1_fu_1634", "Parent" : "0", "Child" : ["99"],
		"CDFG" : "gemm_int8_Pipeline_load_X_VITIS_LOOP_30_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49155", "EstimateLatencyMax" : "49155",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "X", "Type" : "None", "Direction" : "I"},
			{"Name" : "Xbuf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "load_X_VITIS_LOOP_30_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_load_X_VITIS_LOOP_30_1_fu_1634.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2_fu_1642", "Parent" : "0", "Child" : ["101"],
		"CDFG" : "gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "init_acc_VITIS_LOOP_46_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2_fu_1642.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3_fu_1678", "Parent" : "0", "Child" : ["103"],
		"CDFG" : "gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Xtile", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln37_mid2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Xtile_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Xtile_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "k0", "Type" : "None", "Direction" : "I"},
			{"Name" : "Xbuf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "load_Xtile_VITIS_LOOP_62_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3_fu_1678.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_70_4_fu_1718", "Parent" : "0", "Child" : ["105"],
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
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_70_4_fu_1718.flow_control_loop_pipe_sequential_init_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759", "Parent" : "0", "Child" : ["107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140"],
		"CDFG" : "gemm_int8_Pipeline_VITIS_LOOP_78_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_31_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_30_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_29_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_28_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_27_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_26_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_25_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_24_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_23_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_22_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_21_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_20_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_19_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_18_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_17_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_16_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_15_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_14_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_13_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_12_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_11_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_10_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_9_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_8_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_7_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_6_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_5_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_4_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_3_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln77", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Wtile", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_1_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_2_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_3_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_4_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_5_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_6_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_7_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_8_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_9_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_10_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_11_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_12_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_13_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_14_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_15_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_16_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_17_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_18_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_19_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_20_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_21_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_22_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_23_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_24_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_25_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_26_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_27_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_28_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_29_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_30_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wtile_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Xtile_31_load_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_78_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U106", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U107", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U108", "Parent" : "106"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U109", "Parent" : "106"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U110", "Parent" : "106"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U111", "Parent" : "106"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U112", "Parent" : "106"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U113", "Parent" : "106"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U114", "Parent" : "106"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U115", "Parent" : "106"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U116", "Parent" : "106"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U117", "Parent" : "106"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U118", "Parent" : "106"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U119", "Parent" : "106"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mul_8s_8s_16_1_1_U120", "Parent" : "106"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mux_32_5_32_1_1_U121", "Parent" : "106"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U122", "Parent" : "106"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U123", "Parent" : "106"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_17s_32_4_1_U124", "Parent" : "106"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U125", "Parent" : "106"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U126", "Parent" : "106"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U127", "Parent" : "106"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U128", "Parent" : "106"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U129", "Parent" : "106"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_17s_17_4_1_U130", "Parent" : "106"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U131", "Parent" : "106"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U132", "Parent" : "106"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U133", "Parent" : "106"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U134", "Parent" : "106"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U135", "Parent" : "106"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U136", "Parent" : "106"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U137", "Parent" : "106"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.mac_muladd_8s_8s_16s_17_4_1_U138", "Parent" : "106"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_92_7_fu_1924", "Parent" : "0", "Child" : ["142", "143"],
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
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_92_7_fu_1924.mux_32_5_32_1_1_U273", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_int8_Pipeline_VITIS_LOOP_92_7_fu_1924.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemm_int8 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		gmem1 {Type I LastRead 9 FirstWrite -1}
		gmem2 {Type O LastRead 18 FirstWrite 1}
		X {Type I LastRead 0 FirstWrite -1}
		W {Type I LastRead 0 FirstWrite -1}
		Y {Type I LastRead 0 FirstWrite -1}}
	gemm_int8_Pipeline_load_X_VITIS_LOOP_30_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		X {Type I LastRead 0 FirstWrite -1}
		Xbuf {Type O LastRead -1 FirstWrite 2}}
	gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2 {
		acc {Type O LastRead -1 FirstWrite 0}
		acc_31 {Type O LastRead -1 FirstWrite 0}
		acc_30 {Type O LastRead -1 FirstWrite 0}
		acc_29 {Type O LastRead -1 FirstWrite 0}
		acc_28 {Type O LastRead -1 FirstWrite 0}
		acc_27 {Type O LastRead -1 FirstWrite 0}
		acc_26 {Type O LastRead -1 FirstWrite 0}
		acc_25 {Type O LastRead -1 FirstWrite 0}
		acc_24 {Type O LastRead -1 FirstWrite 0}
		acc_23 {Type O LastRead -1 FirstWrite 0}
		acc_22 {Type O LastRead -1 FirstWrite 0}
		acc_21 {Type O LastRead -1 FirstWrite 0}
		acc_20 {Type O LastRead -1 FirstWrite 0}
		acc_19 {Type O LastRead -1 FirstWrite 0}
		acc_18 {Type O LastRead -1 FirstWrite 0}
		acc_17 {Type O LastRead -1 FirstWrite 0}
		acc_16 {Type O LastRead -1 FirstWrite 0}
		acc_15 {Type O LastRead -1 FirstWrite 0}
		acc_14 {Type O LastRead -1 FirstWrite 0}
		acc_13 {Type O LastRead -1 FirstWrite 0}
		acc_12 {Type O LastRead -1 FirstWrite 0}
		acc_11 {Type O LastRead -1 FirstWrite 0}
		acc_10 {Type O LastRead -1 FirstWrite 0}
		acc_9 {Type O LastRead -1 FirstWrite 0}
		acc_8 {Type O LastRead -1 FirstWrite 0}
		acc_7 {Type O LastRead -1 FirstWrite 0}
		acc_6 {Type O LastRead -1 FirstWrite 0}
		acc_5 {Type O LastRead -1 FirstWrite 0}
		acc_4 {Type O LastRead -1 FirstWrite 0}
		acc_3 {Type O LastRead -1 FirstWrite 0}
		acc_2 {Type O LastRead -1 FirstWrite 0}
		acc_1 {Type O LastRead -1 FirstWrite 0}}
	gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3 {
		Xtile {Type O LastRead -1 FirstWrite 1}
		trunc_ln37_mid2 {Type I LastRead 0 FirstWrite -1}
		Xtile_31 {Type O LastRead -1 FirstWrite 1}
		Xtile_30 {Type O LastRead -1 FirstWrite 1}
		Xtile_29 {Type O LastRead -1 FirstWrite 1}
		Xtile_28 {Type O LastRead -1 FirstWrite 1}
		Xtile_27 {Type O LastRead -1 FirstWrite 1}
		Xtile_26 {Type O LastRead -1 FirstWrite 1}
		Xtile_25 {Type O LastRead -1 FirstWrite 1}
		Xtile_24 {Type O LastRead -1 FirstWrite 1}
		Xtile_23 {Type O LastRead -1 FirstWrite 1}
		Xtile_22 {Type O LastRead -1 FirstWrite 1}
		Xtile_21 {Type O LastRead -1 FirstWrite 1}
		Xtile_20 {Type O LastRead -1 FirstWrite 1}
		Xtile_19 {Type O LastRead -1 FirstWrite 1}
		Xtile_18 {Type O LastRead -1 FirstWrite 1}
		Xtile_17 {Type O LastRead -1 FirstWrite 1}
		Xtile_16 {Type O LastRead -1 FirstWrite 1}
		Xtile_15 {Type O LastRead -1 FirstWrite 1}
		Xtile_14 {Type O LastRead -1 FirstWrite 1}
		Xtile_13 {Type O LastRead -1 FirstWrite 1}
		Xtile_12 {Type O LastRead -1 FirstWrite 1}
		Xtile_11 {Type O LastRead -1 FirstWrite 1}
		Xtile_10 {Type O LastRead -1 FirstWrite 1}
		Xtile_9 {Type O LastRead -1 FirstWrite 1}
		Xtile_8 {Type O LastRead -1 FirstWrite 1}
		Xtile_7 {Type O LastRead -1 FirstWrite 1}
		Xtile_6 {Type O LastRead -1 FirstWrite 1}
		Xtile_5 {Type O LastRead -1 FirstWrite 1}
		Xtile_4 {Type O LastRead -1 FirstWrite 1}
		Xtile_3 {Type O LastRead -1 FirstWrite 1}
		Xtile_2 {Type O LastRead -1 FirstWrite 1}
		Xtile_1 {Type O LastRead -1 FirstWrite 1}
		k0 {Type I LastRead 0 FirstWrite -1}
		Xbuf {Type I LastRead 0 FirstWrite -1}}
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
		add_ln69 {Type I LastRead 0 FirstWrite -1}}
	gemm_int8_Pipeline_VITIS_LOOP_78_5 {
		acc_31_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_30_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_29_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_28_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_27_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_26_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_25_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_24_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_23_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_22_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_21_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_20_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_19_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_18_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_17_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_16_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_15_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_14_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_13_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_12_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_11_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_10_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_9_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_8_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_7_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_6_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_5_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_4_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_3_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_2_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_1_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_load_1 {Type I LastRead 0 FirstWrite -1}
		acc_31 {Type O LastRead -1 FirstWrite 6}
		zext_ln77 {Type I LastRead 0 FirstWrite -1}
		acc_30 {Type O LastRead -1 FirstWrite 6}
		acc_29 {Type O LastRead -1 FirstWrite 6}
		acc_28 {Type O LastRead -1 FirstWrite 6}
		acc_27 {Type O LastRead -1 FirstWrite 6}
		acc_26 {Type O LastRead -1 FirstWrite 6}
		acc_25 {Type O LastRead -1 FirstWrite 6}
		acc_24 {Type O LastRead -1 FirstWrite 6}
		acc_23 {Type O LastRead -1 FirstWrite 6}
		acc_22 {Type O LastRead -1 FirstWrite 6}
		acc_21 {Type O LastRead -1 FirstWrite 6}
		acc_20 {Type O LastRead -1 FirstWrite 6}
		acc_19 {Type O LastRead -1 FirstWrite 6}
		acc_18 {Type O LastRead -1 FirstWrite 6}
		acc_17 {Type O LastRead -1 FirstWrite 6}
		acc_16 {Type O LastRead -1 FirstWrite 6}
		acc_15 {Type O LastRead -1 FirstWrite 6}
		acc_14 {Type O LastRead -1 FirstWrite 6}
		acc_13 {Type O LastRead -1 FirstWrite 6}
		acc_12 {Type O LastRead -1 FirstWrite 6}
		acc_11 {Type O LastRead -1 FirstWrite 6}
		acc_10 {Type O LastRead -1 FirstWrite 6}
		acc_9 {Type O LastRead -1 FirstWrite 6}
		acc_8 {Type O LastRead -1 FirstWrite 6}
		acc_7 {Type O LastRead -1 FirstWrite 6}
		acc_6 {Type O LastRead -1 FirstWrite 6}
		acc_5 {Type O LastRead -1 FirstWrite 6}
		acc_4 {Type O LastRead -1 FirstWrite 6}
		acc_3 {Type O LastRead -1 FirstWrite 6}
		acc_2 {Type O LastRead -1 FirstWrite 6}
		acc_1 {Type O LastRead -1 FirstWrite 6}
		acc {Type O LastRead -1 FirstWrite 6}
		Wtile {Type I LastRead 1 FirstWrite -1}
		Xtile_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_1 {Type I LastRead 0 FirstWrite -1}
		Xtile_1_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_2 {Type I LastRead 2 FirstWrite -1}
		Xtile_2_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_3 {Type I LastRead 1 FirstWrite -1}
		Xtile_3_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_4 {Type I LastRead 3 FirstWrite -1}
		Xtile_4_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_5 {Type I LastRead 1 FirstWrite -1}
		Xtile_5_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_6 {Type I LastRead 3 FirstWrite -1}
		Xtile_6_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_7 {Type I LastRead 1 FirstWrite -1}
		Xtile_7_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_8 {Type I LastRead 3 FirstWrite -1}
		Xtile_8_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_9 {Type I LastRead 1 FirstWrite -1}
		Xtile_9_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_10 {Type I LastRead 3 FirstWrite -1}
		Xtile_10_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_11 {Type I LastRead 1 FirstWrite -1}
		Xtile_11_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_12 {Type I LastRead 3 FirstWrite -1}
		Xtile_12_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_13 {Type I LastRead 2 FirstWrite -1}
		Xtile_13_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_14 {Type I LastRead 1 FirstWrite -1}
		Xtile_14_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_15 {Type I LastRead 1 FirstWrite -1}
		Xtile_15_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_16 {Type I LastRead 3 FirstWrite -1}
		Xtile_16_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_17 {Type I LastRead 1 FirstWrite -1}
		Xtile_17_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_18 {Type I LastRead 3 FirstWrite -1}
		Xtile_18_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_19 {Type I LastRead 1 FirstWrite -1}
		Xtile_19_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_20 {Type I LastRead 3 FirstWrite -1}
		Xtile_20_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_21 {Type I LastRead 1 FirstWrite -1}
		Xtile_21_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_22 {Type I LastRead 3 FirstWrite -1}
		Xtile_22_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_23 {Type I LastRead 1 FirstWrite -1}
		Xtile_23_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_24 {Type I LastRead 3 FirstWrite -1}
		Xtile_24_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_25 {Type I LastRead 1 FirstWrite -1}
		Xtile_25_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_26 {Type I LastRead 3 FirstWrite -1}
		Xtile_26_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_27 {Type I LastRead 1 FirstWrite -1}
		Xtile_27_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_28 {Type I LastRead 3 FirstWrite -1}
		Xtile_28_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_29 {Type I LastRead 3 FirstWrite -1}
		Xtile_29_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_30 {Type I LastRead 1 FirstWrite -1}
		Xtile_30_load_cast {Type I LastRead 0 FirstWrite -1}
		Wtile_31 {Type I LastRead 0 FirstWrite -1}
		Xtile_31_load_cast {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "2945582", "Max" : "2945582"}
	, {"Name" : "Interval", "Min" : "2945583", "Max" : "2945583"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 32 }  { m_axi_gmem2_WSTRB STRB 1 4 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 32 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
	{ gmem2 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
	{ gmem2 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
