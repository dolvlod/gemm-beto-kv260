set ModuleHierarchy {[{
"Name" : "gemm_int8","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_gemm_int8_Pipeline_load_X_VITIS_LOOP_30_1_fu_1634","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "load_X_VITIS_LOOP_30_1","ID" : "2","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "tile_m_tile_n","ID" : "3","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_gemm_int8_Pipeline_init_acc_VITIS_LOOP_46_2_fu_1642","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "init_acc_VITIS_LOOP_46_2","ID" : "5","Type" : "pipeline"},]},],
	"SubLoops" : [
	{"Name" : "tile_k","ID" : "6","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_gemm_int8_Pipeline_load_Xtile_VITIS_LOOP_62_3_fu_1678","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "load_Xtile_VITIS_LOOP_62_3","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_gemm_int8_Pipeline_VITIS_LOOP_70_4_fu_1718","ID" : "9","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "load_Wtile_VITIS_LOOP_70_4","ID" : "10","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "compute","ID" : "11","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_gemm_int8_Pipeline_VITIS_LOOP_78_5_fu_1759","ID" : "12","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_78_5","ID" : "13","Type" : "pipeline"},]},]},]},
	{"Name" : "store_Y","ID" : "14","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_gemm_int8_Pipeline_VITIS_LOOP_92_7_fu_1924","ID" : "15","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_92_7","ID" : "16","Type" : "pipeline"},]},]},]},]
}]}