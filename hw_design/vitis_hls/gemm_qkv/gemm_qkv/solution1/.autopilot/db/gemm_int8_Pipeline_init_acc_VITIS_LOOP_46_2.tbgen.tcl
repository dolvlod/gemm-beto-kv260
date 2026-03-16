set moduleName gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2
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
set C_modelName {gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ acc int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_31 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_30 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_29 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_28 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_27 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_26 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_25 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_24 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_23 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_22 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_21 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_20 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_19 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_18 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_17 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_16 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_15 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_14 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_13 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_12 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_11 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_10 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_9 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_8 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_7 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_6 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_5 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_4 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_3 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_2 int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ acc_1 int 32 regular {array 32 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "acc", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_31", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_30", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_29", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_28", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_27", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_26", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_24", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_22", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_21", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_20", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_19", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 134
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ acc_address0 sc_out sc_lv 5 signal 0 } 
	{ acc_ce0 sc_out sc_logic 1 signal 0 } 
	{ acc_we0 sc_out sc_logic 1 signal 0 } 
	{ acc_d0 sc_out sc_lv 32 signal 0 } 
	{ acc_31_address0 sc_out sc_lv 5 signal 1 } 
	{ acc_31_ce0 sc_out sc_logic 1 signal 1 } 
	{ acc_31_we0 sc_out sc_logic 1 signal 1 } 
	{ acc_31_d0 sc_out sc_lv 32 signal 1 } 
	{ acc_30_address0 sc_out sc_lv 5 signal 2 } 
	{ acc_30_ce0 sc_out sc_logic 1 signal 2 } 
	{ acc_30_we0 sc_out sc_logic 1 signal 2 } 
	{ acc_30_d0 sc_out sc_lv 32 signal 2 } 
	{ acc_29_address0 sc_out sc_lv 5 signal 3 } 
	{ acc_29_ce0 sc_out sc_logic 1 signal 3 } 
	{ acc_29_we0 sc_out sc_logic 1 signal 3 } 
	{ acc_29_d0 sc_out sc_lv 32 signal 3 } 
	{ acc_28_address0 sc_out sc_lv 5 signal 4 } 
	{ acc_28_ce0 sc_out sc_logic 1 signal 4 } 
	{ acc_28_we0 sc_out sc_logic 1 signal 4 } 
	{ acc_28_d0 sc_out sc_lv 32 signal 4 } 
	{ acc_27_address0 sc_out sc_lv 5 signal 5 } 
	{ acc_27_ce0 sc_out sc_logic 1 signal 5 } 
	{ acc_27_we0 sc_out sc_logic 1 signal 5 } 
	{ acc_27_d0 sc_out sc_lv 32 signal 5 } 
	{ acc_26_address0 sc_out sc_lv 5 signal 6 } 
	{ acc_26_ce0 sc_out sc_logic 1 signal 6 } 
	{ acc_26_we0 sc_out sc_logic 1 signal 6 } 
	{ acc_26_d0 sc_out sc_lv 32 signal 6 } 
	{ acc_25_address0 sc_out sc_lv 5 signal 7 } 
	{ acc_25_ce0 sc_out sc_logic 1 signal 7 } 
	{ acc_25_we0 sc_out sc_logic 1 signal 7 } 
	{ acc_25_d0 sc_out sc_lv 32 signal 7 } 
	{ acc_24_address0 sc_out sc_lv 5 signal 8 } 
	{ acc_24_ce0 sc_out sc_logic 1 signal 8 } 
	{ acc_24_we0 sc_out sc_logic 1 signal 8 } 
	{ acc_24_d0 sc_out sc_lv 32 signal 8 } 
	{ acc_23_address0 sc_out sc_lv 5 signal 9 } 
	{ acc_23_ce0 sc_out sc_logic 1 signal 9 } 
	{ acc_23_we0 sc_out sc_logic 1 signal 9 } 
	{ acc_23_d0 sc_out sc_lv 32 signal 9 } 
	{ acc_22_address0 sc_out sc_lv 5 signal 10 } 
	{ acc_22_ce0 sc_out sc_logic 1 signal 10 } 
	{ acc_22_we0 sc_out sc_logic 1 signal 10 } 
	{ acc_22_d0 sc_out sc_lv 32 signal 10 } 
	{ acc_21_address0 sc_out sc_lv 5 signal 11 } 
	{ acc_21_ce0 sc_out sc_logic 1 signal 11 } 
	{ acc_21_we0 sc_out sc_logic 1 signal 11 } 
	{ acc_21_d0 sc_out sc_lv 32 signal 11 } 
	{ acc_20_address0 sc_out sc_lv 5 signal 12 } 
	{ acc_20_ce0 sc_out sc_logic 1 signal 12 } 
	{ acc_20_we0 sc_out sc_logic 1 signal 12 } 
	{ acc_20_d0 sc_out sc_lv 32 signal 12 } 
	{ acc_19_address0 sc_out sc_lv 5 signal 13 } 
	{ acc_19_ce0 sc_out sc_logic 1 signal 13 } 
	{ acc_19_we0 sc_out sc_logic 1 signal 13 } 
	{ acc_19_d0 sc_out sc_lv 32 signal 13 } 
	{ acc_18_address0 sc_out sc_lv 5 signal 14 } 
	{ acc_18_ce0 sc_out sc_logic 1 signal 14 } 
	{ acc_18_we0 sc_out sc_logic 1 signal 14 } 
	{ acc_18_d0 sc_out sc_lv 32 signal 14 } 
	{ acc_17_address0 sc_out sc_lv 5 signal 15 } 
	{ acc_17_ce0 sc_out sc_logic 1 signal 15 } 
	{ acc_17_we0 sc_out sc_logic 1 signal 15 } 
	{ acc_17_d0 sc_out sc_lv 32 signal 15 } 
	{ acc_16_address0 sc_out sc_lv 5 signal 16 } 
	{ acc_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ acc_16_we0 sc_out sc_logic 1 signal 16 } 
	{ acc_16_d0 sc_out sc_lv 32 signal 16 } 
	{ acc_15_address0 sc_out sc_lv 5 signal 17 } 
	{ acc_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ acc_15_we0 sc_out sc_logic 1 signal 17 } 
	{ acc_15_d0 sc_out sc_lv 32 signal 17 } 
	{ acc_14_address0 sc_out sc_lv 5 signal 18 } 
	{ acc_14_ce0 sc_out sc_logic 1 signal 18 } 
	{ acc_14_we0 sc_out sc_logic 1 signal 18 } 
	{ acc_14_d0 sc_out sc_lv 32 signal 18 } 
	{ acc_13_address0 sc_out sc_lv 5 signal 19 } 
	{ acc_13_ce0 sc_out sc_logic 1 signal 19 } 
	{ acc_13_we0 sc_out sc_logic 1 signal 19 } 
	{ acc_13_d0 sc_out sc_lv 32 signal 19 } 
	{ acc_12_address0 sc_out sc_lv 5 signal 20 } 
	{ acc_12_ce0 sc_out sc_logic 1 signal 20 } 
	{ acc_12_we0 sc_out sc_logic 1 signal 20 } 
	{ acc_12_d0 sc_out sc_lv 32 signal 20 } 
	{ acc_11_address0 sc_out sc_lv 5 signal 21 } 
	{ acc_11_ce0 sc_out sc_logic 1 signal 21 } 
	{ acc_11_we0 sc_out sc_logic 1 signal 21 } 
	{ acc_11_d0 sc_out sc_lv 32 signal 21 } 
	{ acc_10_address0 sc_out sc_lv 5 signal 22 } 
	{ acc_10_ce0 sc_out sc_logic 1 signal 22 } 
	{ acc_10_we0 sc_out sc_logic 1 signal 22 } 
	{ acc_10_d0 sc_out sc_lv 32 signal 22 } 
	{ acc_9_address0 sc_out sc_lv 5 signal 23 } 
	{ acc_9_ce0 sc_out sc_logic 1 signal 23 } 
	{ acc_9_we0 sc_out sc_logic 1 signal 23 } 
	{ acc_9_d0 sc_out sc_lv 32 signal 23 } 
	{ acc_8_address0 sc_out sc_lv 5 signal 24 } 
	{ acc_8_ce0 sc_out sc_logic 1 signal 24 } 
	{ acc_8_we0 sc_out sc_logic 1 signal 24 } 
	{ acc_8_d0 sc_out sc_lv 32 signal 24 } 
	{ acc_7_address0 sc_out sc_lv 5 signal 25 } 
	{ acc_7_ce0 sc_out sc_logic 1 signal 25 } 
	{ acc_7_we0 sc_out sc_logic 1 signal 25 } 
	{ acc_7_d0 sc_out sc_lv 32 signal 25 } 
	{ acc_6_address0 sc_out sc_lv 5 signal 26 } 
	{ acc_6_ce0 sc_out sc_logic 1 signal 26 } 
	{ acc_6_we0 sc_out sc_logic 1 signal 26 } 
	{ acc_6_d0 sc_out sc_lv 32 signal 26 } 
	{ acc_5_address0 sc_out sc_lv 5 signal 27 } 
	{ acc_5_ce0 sc_out sc_logic 1 signal 27 } 
	{ acc_5_we0 sc_out sc_logic 1 signal 27 } 
	{ acc_5_d0 sc_out sc_lv 32 signal 27 } 
	{ acc_4_address0 sc_out sc_lv 5 signal 28 } 
	{ acc_4_ce0 sc_out sc_logic 1 signal 28 } 
	{ acc_4_we0 sc_out sc_logic 1 signal 28 } 
	{ acc_4_d0 sc_out sc_lv 32 signal 28 } 
	{ acc_3_address0 sc_out sc_lv 5 signal 29 } 
	{ acc_3_ce0 sc_out sc_logic 1 signal 29 } 
	{ acc_3_we0 sc_out sc_logic 1 signal 29 } 
	{ acc_3_d0 sc_out sc_lv 32 signal 29 } 
	{ acc_2_address0 sc_out sc_lv 5 signal 30 } 
	{ acc_2_ce0 sc_out sc_logic 1 signal 30 } 
	{ acc_2_we0 sc_out sc_logic 1 signal 30 } 
	{ acc_2_d0 sc_out sc_lv 32 signal 30 } 
	{ acc_1_address0 sc_out sc_lv 5 signal 31 } 
	{ acc_1_ce0 sc_out sc_logic 1 signal 31 } 
	{ acc_1_we0 sc_out sc_logic 1 signal 31 } 
	{ acc_1_d0 sc_out sc_lv 32 signal 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "acc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc", "role": "address0" }} , 
 	{ "name": "acc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "ce0" }} , 
 	{ "name": "acc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "we0" }} , 
 	{ "name": "acc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc", "role": "d0" }} , 
 	{ "name": "acc_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_31", "role": "address0" }} , 
 	{ "name": "acc_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_31", "role": "ce0" }} , 
 	{ "name": "acc_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_31", "role": "we0" }} , 
 	{ "name": "acc_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_31", "role": "d0" }} , 
 	{ "name": "acc_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_30", "role": "address0" }} , 
 	{ "name": "acc_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_30", "role": "ce0" }} , 
 	{ "name": "acc_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_30", "role": "we0" }} , 
 	{ "name": "acc_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_30", "role": "d0" }} , 
 	{ "name": "acc_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_29", "role": "address0" }} , 
 	{ "name": "acc_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_29", "role": "ce0" }} , 
 	{ "name": "acc_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_29", "role": "we0" }} , 
 	{ "name": "acc_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_29", "role": "d0" }} , 
 	{ "name": "acc_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_28", "role": "address0" }} , 
 	{ "name": "acc_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_28", "role": "ce0" }} , 
 	{ "name": "acc_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_28", "role": "we0" }} , 
 	{ "name": "acc_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_28", "role": "d0" }} , 
 	{ "name": "acc_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_27", "role": "address0" }} , 
 	{ "name": "acc_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_27", "role": "ce0" }} , 
 	{ "name": "acc_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_27", "role": "we0" }} , 
 	{ "name": "acc_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_27", "role": "d0" }} , 
 	{ "name": "acc_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_26", "role": "address0" }} , 
 	{ "name": "acc_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_26", "role": "ce0" }} , 
 	{ "name": "acc_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_26", "role": "we0" }} , 
 	{ "name": "acc_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_26", "role": "d0" }} , 
 	{ "name": "acc_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_25", "role": "address0" }} , 
 	{ "name": "acc_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_25", "role": "ce0" }} , 
 	{ "name": "acc_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_25", "role": "we0" }} , 
 	{ "name": "acc_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_25", "role": "d0" }} , 
 	{ "name": "acc_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_24", "role": "address0" }} , 
 	{ "name": "acc_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_24", "role": "ce0" }} , 
 	{ "name": "acc_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_24", "role": "we0" }} , 
 	{ "name": "acc_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_24", "role": "d0" }} , 
 	{ "name": "acc_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_23", "role": "address0" }} , 
 	{ "name": "acc_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_23", "role": "ce0" }} , 
 	{ "name": "acc_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_23", "role": "we0" }} , 
 	{ "name": "acc_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_23", "role": "d0" }} , 
 	{ "name": "acc_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_22", "role": "address0" }} , 
 	{ "name": "acc_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_22", "role": "ce0" }} , 
 	{ "name": "acc_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_22", "role": "we0" }} , 
 	{ "name": "acc_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_22", "role": "d0" }} , 
 	{ "name": "acc_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_21", "role": "address0" }} , 
 	{ "name": "acc_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_21", "role": "ce0" }} , 
 	{ "name": "acc_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_21", "role": "we0" }} , 
 	{ "name": "acc_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_21", "role": "d0" }} , 
 	{ "name": "acc_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_20", "role": "address0" }} , 
 	{ "name": "acc_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_20", "role": "ce0" }} , 
 	{ "name": "acc_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_20", "role": "we0" }} , 
 	{ "name": "acc_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_20", "role": "d0" }} , 
 	{ "name": "acc_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_19", "role": "address0" }} , 
 	{ "name": "acc_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_19", "role": "ce0" }} , 
 	{ "name": "acc_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_19", "role": "we0" }} , 
 	{ "name": "acc_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_19", "role": "d0" }} , 
 	{ "name": "acc_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_18", "role": "address0" }} , 
 	{ "name": "acc_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_18", "role": "ce0" }} , 
 	{ "name": "acc_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_18", "role": "we0" }} , 
 	{ "name": "acc_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_18", "role": "d0" }} , 
 	{ "name": "acc_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_17", "role": "address0" }} , 
 	{ "name": "acc_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_17", "role": "ce0" }} , 
 	{ "name": "acc_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_17", "role": "we0" }} , 
 	{ "name": "acc_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_17", "role": "d0" }} , 
 	{ "name": "acc_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_16", "role": "address0" }} , 
 	{ "name": "acc_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_16", "role": "ce0" }} , 
 	{ "name": "acc_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_16", "role": "we0" }} , 
 	{ "name": "acc_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_16", "role": "d0" }} , 
 	{ "name": "acc_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_15", "role": "address0" }} , 
 	{ "name": "acc_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_15", "role": "ce0" }} , 
 	{ "name": "acc_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_15", "role": "we0" }} , 
 	{ "name": "acc_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_15", "role": "d0" }} , 
 	{ "name": "acc_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_14", "role": "address0" }} , 
 	{ "name": "acc_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_14", "role": "ce0" }} , 
 	{ "name": "acc_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_14", "role": "we0" }} , 
 	{ "name": "acc_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_14", "role": "d0" }} , 
 	{ "name": "acc_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_13", "role": "address0" }} , 
 	{ "name": "acc_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_13", "role": "ce0" }} , 
 	{ "name": "acc_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_13", "role": "we0" }} , 
 	{ "name": "acc_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_13", "role": "d0" }} , 
 	{ "name": "acc_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_12", "role": "address0" }} , 
 	{ "name": "acc_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_12", "role": "ce0" }} , 
 	{ "name": "acc_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_12", "role": "we0" }} , 
 	{ "name": "acc_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_12", "role": "d0" }} , 
 	{ "name": "acc_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_11", "role": "address0" }} , 
 	{ "name": "acc_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_11", "role": "ce0" }} , 
 	{ "name": "acc_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_11", "role": "we0" }} , 
 	{ "name": "acc_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_11", "role": "d0" }} , 
 	{ "name": "acc_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_10", "role": "address0" }} , 
 	{ "name": "acc_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_10", "role": "ce0" }} , 
 	{ "name": "acc_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_10", "role": "we0" }} , 
 	{ "name": "acc_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_10", "role": "d0" }} , 
 	{ "name": "acc_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_9", "role": "address0" }} , 
 	{ "name": "acc_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_9", "role": "ce0" }} , 
 	{ "name": "acc_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_9", "role": "we0" }} , 
 	{ "name": "acc_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_9", "role": "d0" }} , 
 	{ "name": "acc_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_8", "role": "address0" }} , 
 	{ "name": "acc_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_8", "role": "ce0" }} , 
 	{ "name": "acc_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_8", "role": "we0" }} , 
 	{ "name": "acc_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_8", "role": "d0" }} , 
 	{ "name": "acc_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_7", "role": "address0" }} , 
 	{ "name": "acc_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_7", "role": "ce0" }} , 
 	{ "name": "acc_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_7", "role": "we0" }} , 
 	{ "name": "acc_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_7", "role": "d0" }} , 
 	{ "name": "acc_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_6", "role": "address0" }} , 
 	{ "name": "acc_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_6", "role": "ce0" }} , 
 	{ "name": "acc_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_6", "role": "we0" }} , 
 	{ "name": "acc_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_6", "role": "d0" }} , 
 	{ "name": "acc_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_5", "role": "address0" }} , 
 	{ "name": "acc_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_5", "role": "ce0" }} , 
 	{ "name": "acc_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_5", "role": "we0" }} , 
 	{ "name": "acc_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_5", "role": "d0" }} , 
 	{ "name": "acc_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_4", "role": "address0" }} , 
 	{ "name": "acc_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_4", "role": "ce0" }} , 
 	{ "name": "acc_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_4", "role": "we0" }} , 
 	{ "name": "acc_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_4", "role": "d0" }} , 
 	{ "name": "acc_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_3", "role": "address0" }} , 
 	{ "name": "acc_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_3", "role": "ce0" }} , 
 	{ "name": "acc_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_3", "role": "we0" }} , 
 	{ "name": "acc_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_3", "role": "d0" }} , 
 	{ "name": "acc_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_2", "role": "address0" }} , 
 	{ "name": "acc_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_2", "role": "ce0" }} , 
 	{ "name": "acc_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_2", "role": "we0" }} , 
 	{ "name": "acc_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_2", "role": "d0" }} , 
 	{ "name": "acc_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "acc_1", "role": "address0" }} , 
 	{ "name": "acc_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_1", "role": "ce0" }} , 
 	{ "name": "acc_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_1", "role": "we0" }} , 
 	{ "name": "acc_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		acc_1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1026", "Max" : "1026"}
	, {"Name" : "Interval", "Min" : "1026", "Max" : "1026"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	acc { ap_memory {  { acc_address0 mem_address 1 5 }  { acc_ce0 mem_ce 1 1 }  { acc_we0 mem_we 1 1 }  { acc_d0 mem_din 1 32 } } }
	acc_31 { ap_memory {  { acc_31_address0 mem_address 1 5 }  { acc_31_ce0 mem_ce 1 1 }  { acc_31_we0 mem_we 1 1 }  { acc_31_d0 mem_din 1 32 } } }
	acc_30 { ap_memory {  { acc_30_address0 mem_address 1 5 }  { acc_30_ce0 mem_ce 1 1 }  { acc_30_we0 mem_we 1 1 }  { acc_30_d0 mem_din 1 32 } } }
	acc_29 { ap_memory {  { acc_29_address0 mem_address 1 5 }  { acc_29_ce0 mem_ce 1 1 }  { acc_29_we0 mem_we 1 1 }  { acc_29_d0 mem_din 1 32 } } }
	acc_28 { ap_memory {  { acc_28_address0 mem_address 1 5 }  { acc_28_ce0 mem_ce 1 1 }  { acc_28_we0 mem_we 1 1 }  { acc_28_d0 mem_din 1 32 } } }
	acc_27 { ap_memory {  { acc_27_address0 mem_address 1 5 }  { acc_27_ce0 mem_ce 1 1 }  { acc_27_we0 mem_we 1 1 }  { acc_27_d0 mem_din 1 32 } } }
	acc_26 { ap_memory {  { acc_26_address0 mem_address 1 5 }  { acc_26_ce0 mem_ce 1 1 }  { acc_26_we0 mem_we 1 1 }  { acc_26_d0 mem_din 1 32 } } }
	acc_25 { ap_memory {  { acc_25_address0 mem_address 1 5 }  { acc_25_ce0 mem_ce 1 1 }  { acc_25_we0 mem_we 1 1 }  { acc_25_d0 mem_din 1 32 } } }
	acc_24 { ap_memory {  { acc_24_address0 mem_address 1 5 }  { acc_24_ce0 mem_ce 1 1 }  { acc_24_we0 mem_we 1 1 }  { acc_24_d0 mem_din 1 32 } } }
	acc_23 { ap_memory {  { acc_23_address0 mem_address 1 5 }  { acc_23_ce0 mem_ce 1 1 }  { acc_23_we0 mem_we 1 1 }  { acc_23_d0 mem_din 1 32 } } }
	acc_22 { ap_memory {  { acc_22_address0 mem_address 1 5 }  { acc_22_ce0 mem_ce 1 1 }  { acc_22_we0 mem_we 1 1 }  { acc_22_d0 mem_din 1 32 } } }
	acc_21 { ap_memory {  { acc_21_address0 mem_address 1 5 }  { acc_21_ce0 mem_ce 1 1 }  { acc_21_we0 mem_we 1 1 }  { acc_21_d0 mem_din 1 32 } } }
	acc_20 { ap_memory {  { acc_20_address0 mem_address 1 5 }  { acc_20_ce0 mem_ce 1 1 }  { acc_20_we0 mem_we 1 1 }  { acc_20_d0 mem_din 1 32 } } }
	acc_19 { ap_memory {  { acc_19_address0 mem_address 1 5 }  { acc_19_ce0 mem_ce 1 1 }  { acc_19_we0 mem_we 1 1 }  { acc_19_d0 mem_din 1 32 } } }
	acc_18 { ap_memory {  { acc_18_address0 mem_address 1 5 }  { acc_18_ce0 mem_ce 1 1 }  { acc_18_we0 mem_we 1 1 }  { acc_18_d0 mem_din 1 32 } } }
	acc_17 { ap_memory {  { acc_17_address0 mem_address 1 5 }  { acc_17_ce0 mem_ce 1 1 }  { acc_17_we0 mem_we 1 1 }  { acc_17_d0 mem_din 1 32 } } }
	acc_16 { ap_memory {  { acc_16_address0 mem_address 1 5 }  { acc_16_ce0 mem_ce 1 1 }  { acc_16_we0 mem_we 1 1 }  { acc_16_d0 mem_din 1 32 } } }
	acc_15 { ap_memory {  { acc_15_address0 mem_address 1 5 }  { acc_15_ce0 mem_ce 1 1 }  { acc_15_we0 mem_we 1 1 }  { acc_15_d0 mem_din 1 32 } } }
	acc_14 { ap_memory {  { acc_14_address0 mem_address 1 5 }  { acc_14_ce0 mem_ce 1 1 }  { acc_14_we0 mem_we 1 1 }  { acc_14_d0 mem_din 1 32 } } }
	acc_13 { ap_memory {  { acc_13_address0 mem_address 1 5 }  { acc_13_ce0 mem_ce 1 1 }  { acc_13_we0 mem_we 1 1 }  { acc_13_d0 mem_din 1 32 } } }
	acc_12 { ap_memory {  { acc_12_address0 mem_address 1 5 }  { acc_12_ce0 mem_ce 1 1 }  { acc_12_we0 mem_we 1 1 }  { acc_12_d0 mem_din 1 32 } } }
	acc_11 { ap_memory {  { acc_11_address0 mem_address 1 5 }  { acc_11_ce0 mem_ce 1 1 }  { acc_11_we0 mem_we 1 1 }  { acc_11_d0 mem_din 1 32 } } }
	acc_10 { ap_memory {  { acc_10_address0 mem_address 1 5 }  { acc_10_ce0 mem_ce 1 1 }  { acc_10_we0 mem_we 1 1 }  { acc_10_d0 mem_din 1 32 } } }
	acc_9 { ap_memory {  { acc_9_address0 mem_address 1 5 }  { acc_9_ce0 mem_ce 1 1 }  { acc_9_we0 mem_we 1 1 }  { acc_9_d0 mem_din 1 32 } } }
	acc_8 { ap_memory {  { acc_8_address0 mem_address 1 5 }  { acc_8_ce0 mem_ce 1 1 }  { acc_8_we0 mem_we 1 1 }  { acc_8_d0 mem_din 1 32 } } }
	acc_7 { ap_memory {  { acc_7_address0 mem_address 1 5 }  { acc_7_ce0 mem_ce 1 1 }  { acc_7_we0 mem_we 1 1 }  { acc_7_d0 mem_din 1 32 } } }
	acc_6 { ap_memory {  { acc_6_address0 mem_address 1 5 }  { acc_6_ce0 mem_ce 1 1 }  { acc_6_we0 mem_we 1 1 }  { acc_6_d0 mem_din 1 32 } } }
	acc_5 { ap_memory {  { acc_5_address0 mem_address 1 5 }  { acc_5_ce0 mem_ce 1 1 }  { acc_5_we0 mem_we 1 1 }  { acc_5_d0 mem_din 1 32 } } }
	acc_4 { ap_memory {  { acc_4_address0 mem_address 1 5 }  { acc_4_ce0 mem_ce 1 1 }  { acc_4_we0 mem_we 1 1 }  { acc_4_d0 mem_din 1 32 } } }
	acc_3 { ap_memory {  { acc_3_address0 mem_address 1 5 }  { acc_3_ce0 mem_ce 1 1 }  { acc_3_we0 mem_we 1 1 }  { acc_3_d0 mem_din 1 32 } } }
	acc_2 { ap_memory {  { acc_2_address0 mem_address 1 5 }  { acc_2_ce0 mem_ce 1 1 }  { acc_2_we0 mem_we 1 1 }  { acc_2_d0 mem_din 1 32 } } }
	acc_1 { ap_memory {  { acc_1_address0 mem_address 1 5 }  { acc_1_ce0 mem_ce 1 1 }  { acc_1_we0 mem_we 1 1 }  { acc_1_d0 mem_din 1 32 } } }
}
