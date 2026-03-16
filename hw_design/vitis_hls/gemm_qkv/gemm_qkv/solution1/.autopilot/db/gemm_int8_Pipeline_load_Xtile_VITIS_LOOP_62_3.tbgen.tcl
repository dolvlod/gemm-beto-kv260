set moduleName gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3
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
set C_modelName {gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ Xtile int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ trunc_ln37_mid2 int 6 regular  }
	{ Xtile_31 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_30 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_29 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_28 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_27 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_26 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_25 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_24 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_23 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_22 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_21 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_20 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_19 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_18 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_17 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_16 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_15 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_14 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_13 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_12 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_11 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_10 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_9 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_8 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_7 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_6 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_5 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_4 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_3 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_2 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ Xtile_1 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ k0 int 10 regular  }
	{ Xbuf int 8 regular {array 49152 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "Xtile", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln37_mid2", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "Xtile_31", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_30", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_29", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_28", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_27", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_26", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_25", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_24", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_23", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_22", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_21", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_20", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_19", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_18", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_17", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_16", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_15", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_14", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_13", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_12", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_11", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_10", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_9", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_8", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Xtile_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k0", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "Xbuf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 139
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Xtile_address0 sc_out sc_lv 5 signal 0 } 
	{ Xtile_ce0 sc_out sc_logic 1 signal 0 } 
	{ Xtile_we0 sc_out sc_logic 1 signal 0 } 
	{ Xtile_d0 sc_out sc_lv 8 signal 0 } 
	{ trunc_ln37_mid2 sc_in sc_lv 6 signal 1 } 
	{ Xtile_31_address0 sc_out sc_lv 5 signal 2 } 
	{ Xtile_31_ce0 sc_out sc_logic 1 signal 2 } 
	{ Xtile_31_we0 sc_out sc_logic 1 signal 2 } 
	{ Xtile_31_d0 sc_out sc_lv 8 signal 2 } 
	{ Xtile_30_address0 sc_out sc_lv 5 signal 3 } 
	{ Xtile_30_ce0 sc_out sc_logic 1 signal 3 } 
	{ Xtile_30_we0 sc_out sc_logic 1 signal 3 } 
	{ Xtile_30_d0 sc_out sc_lv 8 signal 3 } 
	{ Xtile_29_address0 sc_out sc_lv 5 signal 4 } 
	{ Xtile_29_ce0 sc_out sc_logic 1 signal 4 } 
	{ Xtile_29_we0 sc_out sc_logic 1 signal 4 } 
	{ Xtile_29_d0 sc_out sc_lv 8 signal 4 } 
	{ Xtile_28_address0 sc_out sc_lv 5 signal 5 } 
	{ Xtile_28_ce0 sc_out sc_logic 1 signal 5 } 
	{ Xtile_28_we0 sc_out sc_logic 1 signal 5 } 
	{ Xtile_28_d0 sc_out sc_lv 8 signal 5 } 
	{ Xtile_27_address0 sc_out sc_lv 5 signal 6 } 
	{ Xtile_27_ce0 sc_out sc_logic 1 signal 6 } 
	{ Xtile_27_we0 sc_out sc_logic 1 signal 6 } 
	{ Xtile_27_d0 sc_out sc_lv 8 signal 6 } 
	{ Xtile_26_address0 sc_out sc_lv 5 signal 7 } 
	{ Xtile_26_ce0 sc_out sc_logic 1 signal 7 } 
	{ Xtile_26_we0 sc_out sc_logic 1 signal 7 } 
	{ Xtile_26_d0 sc_out sc_lv 8 signal 7 } 
	{ Xtile_25_address0 sc_out sc_lv 5 signal 8 } 
	{ Xtile_25_ce0 sc_out sc_logic 1 signal 8 } 
	{ Xtile_25_we0 sc_out sc_logic 1 signal 8 } 
	{ Xtile_25_d0 sc_out sc_lv 8 signal 8 } 
	{ Xtile_24_address0 sc_out sc_lv 5 signal 9 } 
	{ Xtile_24_ce0 sc_out sc_logic 1 signal 9 } 
	{ Xtile_24_we0 sc_out sc_logic 1 signal 9 } 
	{ Xtile_24_d0 sc_out sc_lv 8 signal 9 } 
	{ Xtile_23_address0 sc_out sc_lv 5 signal 10 } 
	{ Xtile_23_ce0 sc_out sc_logic 1 signal 10 } 
	{ Xtile_23_we0 sc_out sc_logic 1 signal 10 } 
	{ Xtile_23_d0 sc_out sc_lv 8 signal 10 } 
	{ Xtile_22_address0 sc_out sc_lv 5 signal 11 } 
	{ Xtile_22_ce0 sc_out sc_logic 1 signal 11 } 
	{ Xtile_22_we0 sc_out sc_logic 1 signal 11 } 
	{ Xtile_22_d0 sc_out sc_lv 8 signal 11 } 
	{ Xtile_21_address0 sc_out sc_lv 5 signal 12 } 
	{ Xtile_21_ce0 sc_out sc_logic 1 signal 12 } 
	{ Xtile_21_we0 sc_out sc_logic 1 signal 12 } 
	{ Xtile_21_d0 sc_out sc_lv 8 signal 12 } 
	{ Xtile_20_address0 sc_out sc_lv 5 signal 13 } 
	{ Xtile_20_ce0 sc_out sc_logic 1 signal 13 } 
	{ Xtile_20_we0 sc_out sc_logic 1 signal 13 } 
	{ Xtile_20_d0 sc_out sc_lv 8 signal 13 } 
	{ Xtile_19_address0 sc_out sc_lv 5 signal 14 } 
	{ Xtile_19_ce0 sc_out sc_logic 1 signal 14 } 
	{ Xtile_19_we0 sc_out sc_logic 1 signal 14 } 
	{ Xtile_19_d0 sc_out sc_lv 8 signal 14 } 
	{ Xtile_18_address0 sc_out sc_lv 5 signal 15 } 
	{ Xtile_18_ce0 sc_out sc_logic 1 signal 15 } 
	{ Xtile_18_we0 sc_out sc_logic 1 signal 15 } 
	{ Xtile_18_d0 sc_out sc_lv 8 signal 15 } 
	{ Xtile_17_address0 sc_out sc_lv 5 signal 16 } 
	{ Xtile_17_ce0 sc_out sc_logic 1 signal 16 } 
	{ Xtile_17_we0 sc_out sc_logic 1 signal 16 } 
	{ Xtile_17_d0 sc_out sc_lv 8 signal 16 } 
	{ Xtile_16_address0 sc_out sc_lv 5 signal 17 } 
	{ Xtile_16_ce0 sc_out sc_logic 1 signal 17 } 
	{ Xtile_16_we0 sc_out sc_logic 1 signal 17 } 
	{ Xtile_16_d0 sc_out sc_lv 8 signal 17 } 
	{ Xtile_15_address0 sc_out sc_lv 5 signal 18 } 
	{ Xtile_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ Xtile_15_we0 sc_out sc_logic 1 signal 18 } 
	{ Xtile_15_d0 sc_out sc_lv 8 signal 18 } 
	{ Xtile_14_address0 sc_out sc_lv 5 signal 19 } 
	{ Xtile_14_ce0 sc_out sc_logic 1 signal 19 } 
	{ Xtile_14_we0 sc_out sc_logic 1 signal 19 } 
	{ Xtile_14_d0 sc_out sc_lv 8 signal 19 } 
	{ Xtile_13_address0 sc_out sc_lv 5 signal 20 } 
	{ Xtile_13_ce0 sc_out sc_logic 1 signal 20 } 
	{ Xtile_13_we0 sc_out sc_logic 1 signal 20 } 
	{ Xtile_13_d0 sc_out sc_lv 8 signal 20 } 
	{ Xtile_12_address0 sc_out sc_lv 5 signal 21 } 
	{ Xtile_12_ce0 sc_out sc_logic 1 signal 21 } 
	{ Xtile_12_we0 sc_out sc_logic 1 signal 21 } 
	{ Xtile_12_d0 sc_out sc_lv 8 signal 21 } 
	{ Xtile_11_address0 sc_out sc_lv 5 signal 22 } 
	{ Xtile_11_ce0 sc_out sc_logic 1 signal 22 } 
	{ Xtile_11_we0 sc_out sc_logic 1 signal 22 } 
	{ Xtile_11_d0 sc_out sc_lv 8 signal 22 } 
	{ Xtile_10_address0 sc_out sc_lv 5 signal 23 } 
	{ Xtile_10_ce0 sc_out sc_logic 1 signal 23 } 
	{ Xtile_10_we0 sc_out sc_logic 1 signal 23 } 
	{ Xtile_10_d0 sc_out sc_lv 8 signal 23 } 
	{ Xtile_9_address0 sc_out sc_lv 5 signal 24 } 
	{ Xtile_9_ce0 sc_out sc_logic 1 signal 24 } 
	{ Xtile_9_we0 sc_out sc_logic 1 signal 24 } 
	{ Xtile_9_d0 sc_out sc_lv 8 signal 24 } 
	{ Xtile_8_address0 sc_out sc_lv 5 signal 25 } 
	{ Xtile_8_ce0 sc_out sc_logic 1 signal 25 } 
	{ Xtile_8_we0 sc_out sc_logic 1 signal 25 } 
	{ Xtile_8_d0 sc_out sc_lv 8 signal 25 } 
	{ Xtile_7_address0 sc_out sc_lv 5 signal 26 } 
	{ Xtile_7_ce0 sc_out sc_logic 1 signal 26 } 
	{ Xtile_7_we0 sc_out sc_logic 1 signal 26 } 
	{ Xtile_7_d0 sc_out sc_lv 8 signal 26 } 
	{ Xtile_6_address0 sc_out sc_lv 5 signal 27 } 
	{ Xtile_6_ce0 sc_out sc_logic 1 signal 27 } 
	{ Xtile_6_we0 sc_out sc_logic 1 signal 27 } 
	{ Xtile_6_d0 sc_out sc_lv 8 signal 27 } 
	{ Xtile_5_address0 sc_out sc_lv 5 signal 28 } 
	{ Xtile_5_ce0 sc_out sc_logic 1 signal 28 } 
	{ Xtile_5_we0 sc_out sc_logic 1 signal 28 } 
	{ Xtile_5_d0 sc_out sc_lv 8 signal 28 } 
	{ Xtile_4_address0 sc_out sc_lv 5 signal 29 } 
	{ Xtile_4_ce0 sc_out sc_logic 1 signal 29 } 
	{ Xtile_4_we0 sc_out sc_logic 1 signal 29 } 
	{ Xtile_4_d0 sc_out sc_lv 8 signal 29 } 
	{ Xtile_3_address0 sc_out sc_lv 5 signal 30 } 
	{ Xtile_3_ce0 sc_out sc_logic 1 signal 30 } 
	{ Xtile_3_we0 sc_out sc_logic 1 signal 30 } 
	{ Xtile_3_d0 sc_out sc_lv 8 signal 30 } 
	{ Xtile_2_address0 sc_out sc_lv 5 signal 31 } 
	{ Xtile_2_ce0 sc_out sc_logic 1 signal 31 } 
	{ Xtile_2_we0 sc_out sc_logic 1 signal 31 } 
	{ Xtile_2_d0 sc_out sc_lv 8 signal 31 } 
	{ Xtile_1_address0 sc_out sc_lv 5 signal 32 } 
	{ Xtile_1_ce0 sc_out sc_logic 1 signal 32 } 
	{ Xtile_1_we0 sc_out sc_logic 1 signal 32 } 
	{ Xtile_1_d0 sc_out sc_lv 8 signal 32 } 
	{ k0 sc_in sc_lv 10 signal 33 } 
	{ Xbuf_address0 sc_out sc_lv 16 signal 34 } 
	{ Xbuf_ce0 sc_out sc_logic 1 signal 34 } 
	{ Xbuf_q0 sc_in sc_lv 8 signal 34 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Xtile_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile", "role": "address0" }} , 
 	{ "name": "Xtile_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile", "role": "ce0" }} , 
 	{ "name": "Xtile_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile", "role": "we0" }} , 
 	{ "name": "Xtile_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile", "role": "d0" }} , 
 	{ "name": "trunc_ln37_mid2", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "trunc_ln37_mid2", "role": "default" }} , 
 	{ "name": "Xtile_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_31", "role": "address0" }} , 
 	{ "name": "Xtile_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_31", "role": "ce0" }} , 
 	{ "name": "Xtile_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_31", "role": "we0" }} , 
 	{ "name": "Xtile_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_31", "role": "d0" }} , 
 	{ "name": "Xtile_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_30", "role": "address0" }} , 
 	{ "name": "Xtile_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_30", "role": "ce0" }} , 
 	{ "name": "Xtile_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_30", "role": "we0" }} , 
 	{ "name": "Xtile_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_30", "role": "d0" }} , 
 	{ "name": "Xtile_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_29", "role": "address0" }} , 
 	{ "name": "Xtile_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_29", "role": "ce0" }} , 
 	{ "name": "Xtile_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_29", "role": "we0" }} , 
 	{ "name": "Xtile_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_29", "role": "d0" }} , 
 	{ "name": "Xtile_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_28", "role": "address0" }} , 
 	{ "name": "Xtile_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_28", "role": "ce0" }} , 
 	{ "name": "Xtile_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_28", "role": "we0" }} , 
 	{ "name": "Xtile_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_28", "role": "d0" }} , 
 	{ "name": "Xtile_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_27", "role": "address0" }} , 
 	{ "name": "Xtile_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_27", "role": "ce0" }} , 
 	{ "name": "Xtile_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_27", "role": "we0" }} , 
 	{ "name": "Xtile_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_27", "role": "d0" }} , 
 	{ "name": "Xtile_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_26", "role": "address0" }} , 
 	{ "name": "Xtile_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_26", "role": "ce0" }} , 
 	{ "name": "Xtile_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_26", "role": "we0" }} , 
 	{ "name": "Xtile_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_26", "role": "d0" }} , 
 	{ "name": "Xtile_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_25", "role": "address0" }} , 
 	{ "name": "Xtile_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_25", "role": "ce0" }} , 
 	{ "name": "Xtile_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_25", "role": "we0" }} , 
 	{ "name": "Xtile_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_25", "role": "d0" }} , 
 	{ "name": "Xtile_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_24", "role": "address0" }} , 
 	{ "name": "Xtile_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_24", "role": "ce0" }} , 
 	{ "name": "Xtile_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_24", "role": "we0" }} , 
 	{ "name": "Xtile_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_24", "role": "d0" }} , 
 	{ "name": "Xtile_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_23", "role": "address0" }} , 
 	{ "name": "Xtile_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_23", "role": "ce0" }} , 
 	{ "name": "Xtile_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_23", "role": "we0" }} , 
 	{ "name": "Xtile_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_23", "role": "d0" }} , 
 	{ "name": "Xtile_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_22", "role": "address0" }} , 
 	{ "name": "Xtile_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_22", "role": "ce0" }} , 
 	{ "name": "Xtile_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_22", "role": "we0" }} , 
 	{ "name": "Xtile_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_22", "role": "d0" }} , 
 	{ "name": "Xtile_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_21", "role": "address0" }} , 
 	{ "name": "Xtile_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_21", "role": "ce0" }} , 
 	{ "name": "Xtile_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_21", "role": "we0" }} , 
 	{ "name": "Xtile_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_21", "role": "d0" }} , 
 	{ "name": "Xtile_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_20", "role": "address0" }} , 
 	{ "name": "Xtile_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_20", "role": "ce0" }} , 
 	{ "name": "Xtile_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_20", "role": "we0" }} , 
 	{ "name": "Xtile_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_20", "role": "d0" }} , 
 	{ "name": "Xtile_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_19", "role": "address0" }} , 
 	{ "name": "Xtile_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_19", "role": "ce0" }} , 
 	{ "name": "Xtile_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_19", "role": "we0" }} , 
 	{ "name": "Xtile_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_19", "role": "d0" }} , 
 	{ "name": "Xtile_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_18", "role": "address0" }} , 
 	{ "name": "Xtile_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_18", "role": "ce0" }} , 
 	{ "name": "Xtile_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_18", "role": "we0" }} , 
 	{ "name": "Xtile_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_18", "role": "d0" }} , 
 	{ "name": "Xtile_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_17", "role": "address0" }} , 
 	{ "name": "Xtile_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_17", "role": "ce0" }} , 
 	{ "name": "Xtile_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_17", "role": "we0" }} , 
 	{ "name": "Xtile_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_17", "role": "d0" }} , 
 	{ "name": "Xtile_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_16", "role": "address0" }} , 
 	{ "name": "Xtile_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_16", "role": "ce0" }} , 
 	{ "name": "Xtile_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_16", "role": "we0" }} , 
 	{ "name": "Xtile_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_16", "role": "d0" }} , 
 	{ "name": "Xtile_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_15", "role": "address0" }} , 
 	{ "name": "Xtile_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_15", "role": "ce0" }} , 
 	{ "name": "Xtile_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_15", "role": "we0" }} , 
 	{ "name": "Xtile_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_15", "role": "d0" }} , 
 	{ "name": "Xtile_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_14", "role": "address0" }} , 
 	{ "name": "Xtile_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_14", "role": "ce0" }} , 
 	{ "name": "Xtile_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_14", "role": "we0" }} , 
 	{ "name": "Xtile_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_14", "role": "d0" }} , 
 	{ "name": "Xtile_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_13", "role": "address0" }} , 
 	{ "name": "Xtile_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_13", "role": "ce0" }} , 
 	{ "name": "Xtile_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_13", "role": "we0" }} , 
 	{ "name": "Xtile_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_13", "role": "d0" }} , 
 	{ "name": "Xtile_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_12", "role": "address0" }} , 
 	{ "name": "Xtile_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_12", "role": "ce0" }} , 
 	{ "name": "Xtile_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_12", "role": "we0" }} , 
 	{ "name": "Xtile_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_12", "role": "d0" }} , 
 	{ "name": "Xtile_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_11", "role": "address0" }} , 
 	{ "name": "Xtile_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_11", "role": "ce0" }} , 
 	{ "name": "Xtile_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_11", "role": "we0" }} , 
 	{ "name": "Xtile_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_11", "role": "d0" }} , 
 	{ "name": "Xtile_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_10", "role": "address0" }} , 
 	{ "name": "Xtile_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_10", "role": "ce0" }} , 
 	{ "name": "Xtile_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_10", "role": "we0" }} , 
 	{ "name": "Xtile_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_10", "role": "d0" }} , 
 	{ "name": "Xtile_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_9", "role": "address0" }} , 
 	{ "name": "Xtile_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_9", "role": "ce0" }} , 
 	{ "name": "Xtile_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_9", "role": "we0" }} , 
 	{ "name": "Xtile_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_9", "role": "d0" }} , 
 	{ "name": "Xtile_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_8", "role": "address0" }} , 
 	{ "name": "Xtile_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_8", "role": "ce0" }} , 
 	{ "name": "Xtile_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_8", "role": "we0" }} , 
 	{ "name": "Xtile_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_8", "role": "d0" }} , 
 	{ "name": "Xtile_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_7", "role": "address0" }} , 
 	{ "name": "Xtile_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_7", "role": "ce0" }} , 
 	{ "name": "Xtile_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_7", "role": "we0" }} , 
 	{ "name": "Xtile_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_7", "role": "d0" }} , 
 	{ "name": "Xtile_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_6", "role": "address0" }} , 
 	{ "name": "Xtile_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_6", "role": "ce0" }} , 
 	{ "name": "Xtile_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_6", "role": "we0" }} , 
 	{ "name": "Xtile_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_6", "role": "d0" }} , 
 	{ "name": "Xtile_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_5", "role": "address0" }} , 
 	{ "name": "Xtile_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_5", "role": "ce0" }} , 
 	{ "name": "Xtile_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_5", "role": "we0" }} , 
 	{ "name": "Xtile_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_5", "role": "d0" }} , 
 	{ "name": "Xtile_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_4", "role": "address0" }} , 
 	{ "name": "Xtile_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_4", "role": "ce0" }} , 
 	{ "name": "Xtile_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_4", "role": "we0" }} , 
 	{ "name": "Xtile_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_4", "role": "d0" }} , 
 	{ "name": "Xtile_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_3", "role": "address0" }} , 
 	{ "name": "Xtile_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_3", "role": "ce0" }} , 
 	{ "name": "Xtile_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_3", "role": "we0" }} , 
 	{ "name": "Xtile_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_3", "role": "d0" }} , 
 	{ "name": "Xtile_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_2", "role": "address0" }} , 
 	{ "name": "Xtile_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_2", "role": "ce0" }} , 
 	{ "name": "Xtile_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_2", "role": "we0" }} , 
 	{ "name": "Xtile_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_2", "role": "d0" }} , 
 	{ "name": "Xtile_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Xtile_1", "role": "address0" }} , 
 	{ "name": "Xtile_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_1", "role": "ce0" }} , 
 	{ "name": "Xtile_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xtile_1", "role": "we0" }} , 
 	{ "name": "Xtile_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xtile_1", "role": "d0" }} , 
 	{ "name": "k0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "k0", "role": "default" }} , 
 	{ "name": "Xbuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Xbuf", "role": "address0" }} , 
 	{ "name": "Xbuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xbuf", "role": "ce0" }} , 
 	{ "name": "Xbuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Xbuf", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		Xbuf {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1026", "Max" : "1026"}
	, {"Name" : "Interval", "Min" : "1026", "Max" : "1026"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Xtile { ap_memory {  { Xtile_address0 mem_address 1 5 }  { Xtile_ce0 mem_ce 1 1 }  { Xtile_we0 mem_we 1 1 }  { Xtile_d0 mem_din 1 8 } } }
	trunc_ln37_mid2 { ap_none {  { trunc_ln37_mid2 in_data 0 6 } } }
	Xtile_31 { ap_memory {  { Xtile_31_address0 mem_address 1 5 }  { Xtile_31_ce0 mem_ce 1 1 }  { Xtile_31_we0 mem_we 1 1 }  { Xtile_31_d0 mem_din 1 8 } } }
	Xtile_30 { ap_memory {  { Xtile_30_address0 mem_address 1 5 }  { Xtile_30_ce0 mem_ce 1 1 }  { Xtile_30_we0 mem_we 1 1 }  { Xtile_30_d0 mem_din 1 8 } } }
	Xtile_29 { ap_memory {  { Xtile_29_address0 mem_address 1 5 }  { Xtile_29_ce0 mem_ce 1 1 }  { Xtile_29_we0 mem_we 1 1 }  { Xtile_29_d0 mem_din 1 8 } } }
	Xtile_28 { ap_memory {  { Xtile_28_address0 mem_address 1 5 }  { Xtile_28_ce0 mem_ce 1 1 }  { Xtile_28_we0 mem_we 1 1 }  { Xtile_28_d0 mem_din 1 8 } } }
	Xtile_27 { ap_memory {  { Xtile_27_address0 mem_address 1 5 }  { Xtile_27_ce0 mem_ce 1 1 }  { Xtile_27_we0 mem_we 1 1 }  { Xtile_27_d0 mem_din 1 8 } } }
	Xtile_26 { ap_memory {  { Xtile_26_address0 mem_address 1 5 }  { Xtile_26_ce0 mem_ce 1 1 }  { Xtile_26_we0 mem_we 1 1 }  { Xtile_26_d0 mem_din 1 8 } } }
	Xtile_25 { ap_memory {  { Xtile_25_address0 mem_address 1 5 }  { Xtile_25_ce0 mem_ce 1 1 }  { Xtile_25_we0 mem_we 1 1 }  { Xtile_25_d0 mem_din 1 8 } } }
	Xtile_24 { ap_memory {  { Xtile_24_address0 mem_address 1 5 }  { Xtile_24_ce0 mem_ce 1 1 }  { Xtile_24_we0 mem_we 1 1 }  { Xtile_24_d0 mem_din 1 8 } } }
	Xtile_23 { ap_memory {  { Xtile_23_address0 mem_address 1 5 }  { Xtile_23_ce0 mem_ce 1 1 }  { Xtile_23_we0 mem_we 1 1 }  { Xtile_23_d0 mem_din 1 8 } } }
	Xtile_22 { ap_memory {  { Xtile_22_address0 mem_address 1 5 }  { Xtile_22_ce0 mem_ce 1 1 }  { Xtile_22_we0 mem_we 1 1 }  { Xtile_22_d0 mem_din 1 8 } } }
	Xtile_21 { ap_memory {  { Xtile_21_address0 mem_address 1 5 }  { Xtile_21_ce0 mem_ce 1 1 }  { Xtile_21_we0 mem_we 1 1 }  { Xtile_21_d0 mem_din 1 8 } } }
	Xtile_20 { ap_memory {  { Xtile_20_address0 mem_address 1 5 }  { Xtile_20_ce0 mem_ce 1 1 }  { Xtile_20_we0 mem_we 1 1 }  { Xtile_20_d0 mem_din 1 8 } } }
	Xtile_19 { ap_memory {  { Xtile_19_address0 mem_address 1 5 }  { Xtile_19_ce0 mem_ce 1 1 }  { Xtile_19_we0 mem_we 1 1 }  { Xtile_19_d0 mem_din 1 8 } } }
	Xtile_18 { ap_memory {  { Xtile_18_address0 mem_address 1 5 }  { Xtile_18_ce0 mem_ce 1 1 }  { Xtile_18_we0 mem_we 1 1 }  { Xtile_18_d0 mem_din 1 8 } } }
	Xtile_17 { ap_memory {  { Xtile_17_address0 mem_address 1 5 }  { Xtile_17_ce0 mem_ce 1 1 }  { Xtile_17_we0 mem_we 1 1 }  { Xtile_17_d0 mem_din 1 8 } } }
	Xtile_16 { ap_memory {  { Xtile_16_address0 mem_address 1 5 }  { Xtile_16_ce0 mem_ce 1 1 }  { Xtile_16_we0 mem_we 1 1 }  { Xtile_16_d0 mem_din 1 8 } } }
	Xtile_15 { ap_memory {  { Xtile_15_address0 mem_address 1 5 }  { Xtile_15_ce0 mem_ce 1 1 }  { Xtile_15_we0 mem_we 1 1 }  { Xtile_15_d0 mem_din 1 8 } } }
	Xtile_14 { ap_memory {  { Xtile_14_address0 mem_address 1 5 }  { Xtile_14_ce0 mem_ce 1 1 }  { Xtile_14_we0 mem_we 1 1 }  { Xtile_14_d0 mem_din 1 8 } } }
	Xtile_13 { ap_memory {  { Xtile_13_address0 mem_address 1 5 }  { Xtile_13_ce0 mem_ce 1 1 }  { Xtile_13_we0 mem_we 1 1 }  { Xtile_13_d0 mem_din 1 8 } } }
	Xtile_12 { ap_memory {  { Xtile_12_address0 mem_address 1 5 }  { Xtile_12_ce0 mem_ce 1 1 }  { Xtile_12_we0 mem_we 1 1 }  { Xtile_12_d0 mem_din 1 8 } } }
	Xtile_11 { ap_memory {  { Xtile_11_address0 mem_address 1 5 }  { Xtile_11_ce0 mem_ce 1 1 }  { Xtile_11_we0 mem_we 1 1 }  { Xtile_11_d0 mem_din 1 8 } } }
	Xtile_10 { ap_memory {  { Xtile_10_address0 mem_address 1 5 }  { Xtile_10_ce0 mem_ce 1 1 }  { Xtile_10_we0 mem_we 1 1 }  { Xtile_10_d0 mem_din 1 8 } } }
	Xtile_9 { ap_memory {  { Xtile_9_address0 mem_address 1 5 }  { Xtile_9_ce0 mem_ce 1 1 }  { Xtile_9_we0 mem_we 1 1 }  { Xtile_9_d0 mem_din 1 8 } } }
	Xtile_8 { ap_memory {  { Xtile_8_address0 mem_address 1 5 }  { Xtile_8_ce0 mem_ce 1 1 }  { Xtile_8_we0 mem_we 1 1 }  { Xtile_8_d0 mem_din 1 8 } } }
	Xtile_7 { ap_memory {  { Xtile_7_address0 mem_address 1 5 }  { Xtile_7_ce0 mem_ce 1 1 }  { Xtile_7_we0 mem_we 1 1 }  { Xtile_7_d0 mem_din 1 8 } } }
	Xtile_6 { ap_memory {  { Xtile_6_address0 mem_address 1 5 }  { Xtile_6_ce0 mem_ce 1 1 }  { Xtile_6_we0 mem_we 1 1 }  { Xtile_6_d0 mem_din 1 8 } } }
	Xtile_5 { ap_memory {  { Xtile_5_address0 mem_address 1 5 }  { Xtile_5_ce0 mem_ce 1 1 }  { Xtile_5_we0 mem_we 1 1 }  { Xtile_5_d0 mem_din 1 8 } } }
	Xtile_4 { ap_memory {  { Xtile_4_address0 mem_address 1 5 }  { Xtile_4_ce0 mem_ce 1 1 }  { Xtile_4_we0 mem_we 1 1 }  { Xtile_4_d0 mem_din 1 8 } } }
	Xtile_3 { ap_memory {  { Xtile_3_address0 mem_address 1 5 }  { Xtile_3_ce0 mem_ce 1 1 }  { Xtile_3_we0 mem_we 1 1 }  { Xtile_3_d0 mem_din 1 8 } } }
	Xtile_2 { ap_memory {  { Xtile_2_address0 mem_address 1 5 }  { Xtile_2_ce0 mem_ce 1 1 }  { Xtile_2_we0 mem_we 1 1 }  { Xtile_2_d0 mem_din 1 8 } } }
	Xtile_1 { ap_memory {  { Xtile_1_address0 mem_address 1 5 }  { Xtile_1_ce0 mem_ce 1 1 }  { Xtile_1_we0 mem_we 1 1 }  { Xtile_1_d0 mem_din 1 8 } } }
	k0 { ap_none {  { k0 in_data 0 10 } } }
	Xbuf { ap_memory {  { Xbuf_address0 mem_address 1 16 }  { Xbuf_ce0 mem_ce 1 1 }  { Xbuf_q0 in_data 0 8 } } }
}
