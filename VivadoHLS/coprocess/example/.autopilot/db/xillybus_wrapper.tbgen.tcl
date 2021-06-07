set moduleName xillybus_wrapper
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {xillybus_wrapper}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_r int 32 regular {fifo 0 volatile }  }
	{ out_r int 32 regular {fifo 1}  }
	{ debug_ready int 8 regular {pointer 0 volatile } {global 0}  }
	{ debug_out int 8 regular {pointer 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "debug_ready", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "debug_ready","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "debug_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "debug_out","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_r_dout sc_in sc_lv 32 signal 0 } 
	{ in_r_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_r_read sc_out sc_logic 1 signal 0 } 
	{ out_r_din sc_out sc_lv 32 signal 1 } 
	{ out_r_full_n sc_in sc_logic 1 signal 1 } 
	{ out_r_write sc_out sc_logic 1 signal 1 } 
	{ debug_ready sc_in sc_lv 8 signal 2 } 
	{ debug_out sc_out sc_lv 8 signal 3 } 
	{ debug_out_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "dout" }} , 
 	{ "name": "in_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "empty_n" }} , 
 	{ "name": "in_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "read" }} , 
 	{ "name": "out_r_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "din" }} , 
 	{ "name": "out_r_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "full_n" }} , 
 	{ "name": "out_r_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "write" }} , 
 	{ "name": "debug_ready", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "debug_ready", "role": "default" }} , 
 	{ "name": "debug_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "debug_out", "role": "default" }} , 
 	{ "name": "debug_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "debug_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "xillybus_wrapper",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_341"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xilly_decprint_fu_347"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_str3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "debug_ready", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_xilly_decprint_fu_347", "Port" : "debug_ready"}]},
			{"Name" : "debug_out", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_xilly_decprint_fu_347", "Port" : "debug_out"}]},
			{"Name" : "p_str4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "powers10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_xilly_decprint_fu_347", "Port" : "powers10"}]},
			{"Name" : "p_str5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_str3_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_str4_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_str5_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_4oPi_table_100_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.second_order_float_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.second_order_float_3_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.second_order_float_s_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_scaled_fixed2ieee_fu_341", "Parent" : "0",
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xilly_decprint_fu_347", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "xilly_decprint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "val_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "powers10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "debug_ready", "Type" : "None", "Direction" : "I"},
			{"Name" : "debug_out", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xilly_decprint_fu_347.powers10_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xilly_decprint_fu_347.out_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_jbC_U8", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_kbM_U9", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_lbW_U10", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_lbW_U11", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_mb6_U12", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_ncg_U13", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xillybus_wrapper {
		in_r {Type I LastRead 3 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 8}
		p_str3 {Type I LastRead -1 FirstWrite -1}
		debug_ready {Type I LastRead 9 FirstWrite -1}
		debug_out {Type O LastRead -1 FirstWrite 3}
		p_str4 {Type I LastRead -1 FirstWrite -1}
		powers10 {Type I LastRead -1 FirstWrite -1}
		p_str5 {Type I LastRead -1 FirstWrite -1}
		ref_4oPi_table_100_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_2 {Type I LastRead -1 FirstWrite -1}
		second_order_float_3 {Type I LastRead -1 FirstWrite -1}
		second_order_float_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	xilly_decprint {
		val_r {Type I LastRead 0 FirstWrite -1}
		powers10 {Type I LastRead -1 FirstWrite -1}
		debug_ready {Type I LastRead 4 FirstWrite -1}
		debug_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_r { ap_fifo {  { in_r_dout fifo_data 0 32 }  { in_r_empty_n fifo_status 0 1 }  { in_r_read fifo_update 1 1 } } }
	out_r { ap_fifo {  { out_r_din fifo_data 1 32 }  { out_r_full_n fifo_status 0 1 }  { out_r_write fifo_update 1 1 } } }
	debug_ready { ap_none {  { debug_ready in_data 0 8 } } }
	debug_out { ap_vld {  { debug_out out_data 1 8 }  { debug_out_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	in_r { fifo_read 2 no_conditional }
	out_r { fifo_write 2 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
