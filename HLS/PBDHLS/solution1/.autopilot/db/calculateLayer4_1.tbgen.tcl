set moduleName calculateLayer4_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {calculateLayer4.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem1 int 32 regular {axi_master 1}  }
	{ Layer4_Neurons_CPU int 64 regular  }
	{ Layer3_Neurons_CPU_622_1 float 32 regular {pointer 0} {global 0}  }
	{ Layer3_Neurons_CPU_623_0 float 32 regular {pointer 0} {global 0}  }
	{ Layer3_Neurons_CPU_623_1 float 32 regular {pointer 0} {global 0}  }
	{ Layer3_Neurons_CPU_624_0 float 32 regular {pointer 0} {global 0}  }
	{ Layer3_Neurons_CPU_624_1 float 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Layer4_Neurons_CPU", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Layer3_Neurons_CPU_622_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "Layer3_Neurons_CPU_623_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "Layer3_Neurons_CPU_623_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "Layer3_Neurons_CPU_624_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "Layer3_Neurons_CPU_624_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 115
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
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 0 } 
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
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 0 } 
	{ Layer4_Neurons_CPU sc_in sc_lv 64 signal 1 } 
	{ Layer3_Neurons_CPU_622_1 sc_in sc_lv 32 signal 2 } 
	{ Layer3_Neurons_CPU_623_0 sc_in sc_lv 32 signal 3 } 
	{ Layer3_Neurons_CPU_623_1 sc_in sc_lv 32 signal 4 } 
	{ Layer3_Neurons_CPU_624_0 sc_in sc_lv 32 signal 5 } 
	{ Layer3_Neurons_CPU_624_1 sc_in sc_lv 32 signal 6 } 
	{ grp_generic_tanh_double_s_fu_147_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_generic_tanh_double_s_fu_147_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_generic_tanh_double_s_fu_147_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_generic_tanh_double_s_fu_147_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_generic_tanh_double_s_fu_147_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_generic_tanh_double_s_fu_147_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_generic_tanh_double_s_fu_147_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_fu_154_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_154_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_154_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_154_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_154_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_169_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_169_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_169_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_169_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_169_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_173_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_173_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_173_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_173_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_173_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_177_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_177_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_177_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_177_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_177_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_158_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_158_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_158_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_158_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_181_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_181_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_181_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_181_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_185_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_185_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_185_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_185_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_189_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_189_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_189_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_189_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_193_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_193_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_193_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_193_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_162_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_162_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_162_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_165_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_165_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_165_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_165_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_197_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_197_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_197_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_197_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
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
 	{ "name": "Layer4_Neurons_CPU", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Layer4_Neurons_CPU", "role": "default" }} , 
 	{ "name": "Layer3_Neurons_CPU_622_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_622_1", "role": "default" }} , 
 	{ "name": "Layer3_Neurons_CPU_623_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_623_0", "role": "default" }} , 
 	{ "name": "Layer3_Neurons_CPU_623_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_623_1", "role": "default" }} , 
 	{ "name": "Layer3_Neurons_CPU_624_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_624_0", "role": "default" }} , 
 	{ "name": "Layer3_Neurons_CPU_624_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_624_1", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_147_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_147_p_din1", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_147_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_147_p_dout0", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_147_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_147_p_ce", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_147_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_147_p_start", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_147_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_147_p_ready", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_147_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_147_p_done", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_147_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_147_p_idle", "role": "default" }} , 
 	{ "name": "grp_fu_154_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_154_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_154_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_154_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_154_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_154_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_154_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_154_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_154_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_154_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_169_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_169_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_169_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_169_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_169_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_173_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_173_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_173_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_173_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_173_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_177_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_177_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_177_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_177_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_177_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_177_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_177_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_177_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_177_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_177_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_158_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_158_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_158_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_158_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_181_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_181_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_181_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_181_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_181_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_181_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_181_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_181_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_185_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_185_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_185_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_185_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_185_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_185_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_185_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_185_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_189_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_189_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_189_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_189_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_189_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_189_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_189_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_189_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_193_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_193_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_193_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_193_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_193_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_193_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_193_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_193_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_162_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_162_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_165_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_165_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_165_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_165_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_197_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_197_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_197_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_197_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_197_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_197_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_197_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_197_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "calculateLayer4_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "170", "EstimateLatencyMax" : "170",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "Layer4_Neurons_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer3_Weights_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU_622_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU_623_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU_623_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU_624_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU_624_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Layer3_Weights_CPU_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U68", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calculateLayer4_1 {
		gmem1 {Type O LastRead 2 FirstWrite 66}
		Layer4_Neurons_CPU {Type I LastRead 0 FirstWrite -1}
		Layer3_Weights_CPU {Type I LastRead -1 FirstWrite -1}
		Layer3_Neurons_CPU_622_1 {Type I LastRead 2 FirstWrite -1}
		Layer3_Neurons_CPU_623_0 {Type I LastRead 2 FirstWrite -1}
		Layer3_Neurons_CPU_623_1 {Type I LastRead 5 FirstWrite -1}
		Layer3_Neurons_CPU_624_0 {Type I LastRead 8 FirstWrite -1}
		Layer3_Neurons_CPU_624_1 {Type I LastRead 11 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "170", "Max" : "170"}
	, {"Name" : "Interval", "Min" : "170", "Max" : "170"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN LEN 1 32 }  { m_axi_gmem1_AWSIZE SIZE 1 3 }  { m_axi_gmem1_AWBURST BURST 1 2 }  { m_axi_gmem1_AWLOCK LOCK 1 2 }  { m_axi_gmem1_AWCACHE CACHE 1 4 }  { m_axi_gmem1_AWPROT PROT 1 3 }  { m_axi_gmem1_AWQOS QOS 1 4 }  { m_axi_gmem1_AWREGION REGION 1 4 }  { m_axi_gmem1_AWUSER USER 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA DATA 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER USER 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN LEN 1 32 }  { m_axi_gmem1_ARSIZE SIZE 1 3 }  { m_axi_gmem1_ARBURST BURST 1 2 }  { m_axi_gmem1_ARLOCK LOCK 1 2 }  { m_axi_gmem1_ARCACHE CACHE 1 4 }  { m_axi_gmem1_ARPROT PROT 1 3 }  { m_axi_gmem1_ARQOS QOS 1 4 }  { m_axi_gmem1_ARREGION REGION 1 4 }  { m_axi_gmem1_ARUSER USER 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA DATA 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER USER 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER USER 0 1 } } }
	Layer4_Neurons_CPU { ap_none {  { Layer4_Neurons_CPU in_data 0 64 } } }
	Layer3_Neurons_CPU_622_1 { ap_none {  { Layer3_Neurons_CPU_622_1 in_data 0 32 } } }
	Layer3_Neurons_CPU_623_0 { ap_none {  { Layer3_Neurons_CPU_623_0 in_data 0 32 } } }
	Layer3_Neurons_CPU_623_1 { ap_none {  { Layer3_Neurons_CPU_623_1 in_data 0 32 } } }
	Layer3_Neurons_CPU_624_0 { ap_none {  { Layer3_Neurons_CPU_624_0 in_data 0 32 } } }
	Layer3_Neurons_CPU_624_1 { ap_none {  { Layer3_Neurons_CPU_624_1 in_data 0 32 } } }
}
