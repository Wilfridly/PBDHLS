// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:hls:l3:1.0
// IP Revision: 2114472112

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
l3_0 your_instance_name (
  .s_axi_control_AWADDR(s_axi_control_AWADDR),        // input wire [3 : 0] s_axi_control_AWADDR
  .s_axi_control_AWVALID(s_axi_control_AWVALID),      // input wire s_axi_control_AWVALID
  .s_axi_control_AWREADY(s_axi_control_AWREADY),      // output wire s_axi_control_AWREADY
  .s_axi_control_WDATA(s_axi_control_WDATA),          // input wire [31 : 0] s_axi_control_WDATA
  .s_axi_control_WSTRB(s_axi_control_WSTRB),          // input wire [3 : 0] s_axi_control_WSTRB
  .s_axi_control_WVALID(s_axi_control_WVALID),        // input wire s_axi_control_WVALID
  .s_axi_control_WREADY(s_axi_control_WREADY),        // output wire s_axi_control_WREADY
  .s_axi_control_BRESP(s_axi_control_BRESP),          // output wire [1 : 0] s_axi_control_BRESP
  .s_axi_control_BVALID(s_axi_control_BVALID),        // output wire s_axi_control_BVALID
  .s_axi_control_BREADY(s_axi_control_BREADY),        // input wire s_axi_control_BREADY
  .s_axi_control_ARADDR(s_axi_control_ARADDR),        // input wire [3 : 0] s_axi_control_ARADDR
  .s_axi_control_ARVALID(s_axi_control_ARVALID),      // input wire s_axi_control_ARVALID
  .s_axi_control_ARREADY(s_axi_control_ARREADY),      // output wire s_axi_control_ARREADY
  .s_axi_control_RDATA(s_axi_control_RDATA),          // output wire [31 : 0] s_axi_control_RDATA
  .s_axi_control_RRESP(s_axi_control_RRESP),          // output wire [1 : 0] s_axi_control_RRESP
  .s_axi_control_RVALID(s_axi_control_RVALID),        // output wire s_axi_control_RVALID
  .s_axi_control_RREADY(s_axi_control_RREADY),        // input wire s_axi_control_RREADY
  .s_axi_control_r_AWADDR(s_axi_control_r_AWADDR),    // input wire [5 : 0] s_axi_control_r_AWADDR
  .s_axi_control_r_AWVALID(s_axi_control_r_AWVALID),  // input wire s_axi_control_r_AWVALID
  .s_axi_control_r_AWREADY(s_axi_control_r_AWREADY),  // output wire s_axi_control_r_AWREADY
  .s_axi_control_r_WDATA(s_axi_control_r_WDATA),      // input wire [31 : 0] s_axi_control_r_WDATA
  .s_axi_control_r_WSTRB(s_axi_control_r_WSTRB),      // input wire [3 : 0] s_axi_control_r_WSTRB
  .s_axi_control_r_WVALID(s_axi_control_r_WVALID),    // input wire s_axi_control_r_WVALID
  .s_axi_control_r_WREADY(s_axi_control_r_WREADY),    // output wire s_axi_control_r_WREADY
  .s_axi_control_r_BRESP(s_axi_control_r_BRESP),      // output wire [1 : 0] s_axi_control_r_BRESP
  .s_axi_control_r_BVALID(s_axi_control_r_BVALID),    // output wire s_axi_control_r_BVALID
  .s_axi_control_r_BREADY(s_axi_control_r_BREADY),    // input wire s_axi_control_r_BREADY
  .s_axi_control_r_ARADDR(s_axi_control_r_ARADDR),    // input wire [5 : 0] s_axi_control_r_ARADDR
  .s_axi_control_r_ARVALID(s_axi_control_r_ARVALID),  // input wire s_axi_control_r_ARVALID
  .s_axi_control_r_ARREADY(s_axi_control_r_ARREADY),  // output wire s_axi_control_r_ARREADY
  .s_axi_control_r_RDATA(s_axi_control_r_RDATA),      // output wire [31 : 0] s_axi_control_r_RDATA
  .s_axi_control_r_RRESP(s_axi_control_r_RRESP),      // output wire [1 : 0] s_axi_control_r_RRESP
  .s_axi_control_r_RVALID(s_axi_control_r_RVALID),    // output wire s_axi_control_r_RVALID
  .s_axi_control_r_RREADY(s_axi_control_r_RREADY),    // input wire s_axi_control_r_RREADY
  .ap_clk(ap_clk),                                    // input wire ap_clk
  .ap_rst_n(ap_rst_n),                                // input wire ap_rst_n
  .interrupt(interrupt),                              // output wire interrupt
  .m_axi_l2_n_mem_AWADDR(m_axi_l2_n_mem_AWADDR),      // output wire [63 : 0] m_axi_l2_n_mem_AWADDR
  .m_axi_l2_n_mem_AWLEN(m_axi_l2_n_mem_AWLEN),        // output wire [7 : 0] m_axi_l2_n_mem_AWLEN
  .m_axi_l2_n_mem_AWSIZE(m_axi_l2_n_mem_AWSIZE),      // output wire [2 : 0] m_axi_l2_n_mem_AWSIZE
  .m_axi_l2_n_mem_AWBURST(m_axi_l2_n_mem_AWBURST),    // output wire [1 : 0] m_axi_l2_n_mem_AWBURST
  .m_axi_l2_n_mem_AWLOCK(m_axi_l2_n_mem_AWLOCK),      // output wire [1 : 0] m_axi_l2_n_mem_AWLOCK
  .m_axi_l2_n_mem_AWREGION(m_axi_l2_n_mem_AWREGION),  // output wire [3 : 0] m_axi_l2_n_mem_AWREGION
  .m_axi_l2_n_mem_AWCACHE(m_axi_l2_n_mem_AWCACHE),    // output wire [3 : 0] m_axi_l2_n_mem_AWCACHE
  .m_axi_l2_n_mem_AWPROT(m_axi_l2_n_mem_AWPROT),      // output wire [2 : 0] m_axi_l2_n_mem_AWPROT
  .m_axi_l2_n_mem_AWQOS(m_axi_l2_n_mem_AWQOS),        // output wire [3 : 0] m_axi_l2_n_mem_AWQOS
  .m_axi_l2_n_mem_AWVALID(m_axi_l2_n_mem_AWVALID),    // output wire m_axi_l2_n_mem_AWVALID
  .m_axi_l2_n_mem_AWREADY(m_axi_l2_n_mem_AWREADY),    // input wire m_axi_l2_n_mem_AWREADY
  .m_axi_l2_n_mem_WDATA(m_axi_l2_n_mem_WDATA),        // output wire [31 : 0] m_axi_l2_n_mem_WDATA
  .m_axi_l2_n_mem_WSTRB(m_axi_l2_n_mem_WSTRB),        // output wire [3 : 0] m_axi_l2_n_mem_WSTRB
  .m_axi_l2_n_mem_WLAST(m_axi_l2_n_mem_WLAST),        // output wire m_axi_l2_n_mem_WLAST
  .m_axi_l2_n_mem_WVALID(m_axi_l2_n_mem_WVALID),      // output wire m_axi_l2_n_mem_WVALID
  .m_axi_l2_n_mem_WREADY(m_axi_l2_n_mem_WREADY),      // input wire m_axi_l2_n_mem_WREADY
  .m_axi_l2_n_mem_BRESP(m_axi_l2_n_mem_BRESP),        // input wire [1 : 0] m_axi_l2_n_mem_BRESP
  .m_axi_l2_n_mem_BVALID(m_axi_l2_n_mem_BVALID),      // input wire m_axi_l2_n_mem_BVALID
  .m_axi_l2_n_mem_BREADY(m_axi_l2_n_mem_BREADY),      // output wire m_axi_l2_n_mem_BREADY
  .m_axi_l2_n_mem_ARADDR(m_axi_l2_n_mem_ARADDR),      // output wire [63 : 0] m_axi_l2_n_mem_ARADDR
  .m_axi_l2_n_mem_ARLEN(m_axi_l2_n_mem_ARLEN),        // output wire [7 : 0] m_axi_l2_n_mem_ARLEN
  .m_axi_l2_n_mem_ARSIZE(m_axi_l2_n_mem_ARSIZE),      // output wire [2 : 0] m_axi_l2_n_mem_ARSIZE
  .m_axi_l2_n_mem_ARBURST(m_axi_l2_n_mem_ARBURST),    // output wire [1 : 0] m_axi_l2_n_mem_ARBURST
  .m_axi_l2_n_mem_ARLOCK(m_axi_l2_n_mem_ARLOCK),      // output wire [1 : 0] m_axi_l2_n_mem_ARLOCK
  .m_axi_l2_n_mem_ARREGION(m_axi_l2_n_mem_ARREGION),  // output wire [3 : 0] m_axi_l2_n_mem_ARREGION
  .m_axi_l2_n_mem_ARCACHE(m_axi_l2_n_mem_ARCACHE),    // output wire [3 : 0] m_axi_l2_n_mem_ARCACHE
  .m_axi_l2_n_mem_ARPROT(m_axi_l2_n_mem_ARPROT),      // output wire [2 : 0] m_axi_l2_n_mem_ARPROT
  .m_axi_l2_n_mem_ARQOS(m_axi_l2_n_mem_ARQOS),        // output wire [3 : 0] m_axi_l2_n_mem_ARQOS
  .m_axi_l2_n_mem_ARVALID(m_axi_l2_n_mem_ARVALID),    // output wire m_axi_l2_n_mem_ARVALID
  .m_axi_l2_n_mem_ARREADY(m_axi_l2_n_mem_ARREADY),    // input wire m_axi_l2_n_mem_ARREADY
  .m_axi_l2_n_mem_RDATA(m_axi_l2_n_mem_RDATA),        // input wire [31 : 0] m_axi_l2_n_mem_RDATA
  .m_axi_l2_n_mem_RRESP(m_axi_l2_n_mem_RRESP),        // input wire [1 : 0] m_axi_l2_n_mem_RRESP
  .m_axi_l2_n_mem_RLAST(m_axi_l2_n_mem_RLAST),        // input wire m_axi_l2_n_mem_RLAST
  .m_axi_l2_n_mem_RVALID(m_axi_l2_n_mem_RVALID),      // input wire m_axi_l2_n_mem_RVALID
  .m_axi_l2_n_mem_RREADY(m_axi_l2_n_mem_RREADY),      // output wire m_axi_l2_n_mem_RREADY
  .m_axi_l3_n_mem_AWADDR(m_axi_l3_n_mem_AWADDR),      // output wire [63 : 0] m_axi_l3_n_mem_AWADDR
  .m_axi_l3_n_mem_AWLEN(m_axi_l3_n_mem_AWLEN),        // output wire [7 : 0] m_axi_l3_n_mem_AWLEN
  .m_axi_l3_n_mem_AWSIZE(m_axi_l3_n_mem_AWSIZE),      // output wire [2 : 0] m_axi_l3_n_mem_AWSIZE
  .m_axi_l3_n_mem_AWBURST(m_axi_l3_n_mem_AWBURST),    // output wire [1 : 0] m_axi_l3_n_mem_AWBURST
  .m_axi_l3_n_mem_AWLOCK(m_axi_l3_n_mem_AWLOCK),      // output wire [1 : 0] m_axi_l3_n_mem_AWLOCK
  .m_axi_l3_n_mem_AWREGION(m_axi_l3_n_mem_AWREGION),  // output wire [3 : 0] m_axi_l3_n_mem_AWREGION
  .m_axi_l3_n_mem_AWCACHE(m_axi_l3_n_mem_AWCACHE),    // output wire [3 : 0] m_axi_l3_n_mem_AWCACHE
  .m_axi_l3_n_mem_AWPROT(m_axi_l3_n_mem_AWPROT),      // output wire [2 : 0] m_axi_l3_n_mem_AWPROT
  .m_axi_l3_n_mem_AWQOS(m_axi_l3_n_mem_AWQOS),        // output wire [3 : 0] m_axi_l3_n_mem_AWQOS
  .m_axi_l3_n_mem_AWVALID(m_axi_l3_n_mem_AWVALID),    // output wire m_axi_l3_n_mem_AWVALID
  .m_axi_l3_n_mem_AWREADY(m_axi_l3_n_mem_AWREADY),    // input wire m_axi_l3_n_mem_AWREADY
  .m_axi_l3_n_mem_WDATA(m_axi_l3_n_mem_WDATA),        // output wire [31 : 0] m_axi_l3_n_mem_WDATA
  .m_axi_l3_n_mem_WSTRB(m_axi_l3_n_mem_WSTRB),        // output wire [3 : 0] m_axi_l3_n_mem_WSTRB
  .m_axi_l3_n_mem_WLAST(m_axi_l3_n_mem_WLAST),        // output wire m_axi_l3_n_mem_WLAST
  .m_axi_l3_n_mem_WVALID(m_axi_l3_n_mem_WVALID),      // output wire m_axi_l3_n_mem_WVALID
  .m_axi_l3_n_mem_WREADY(m_axi_l3_n_mem_WREADY),      // input wire m_axi_l3_n_mem_WREADY
  .m_axi_l3_n_mem_BRESP(m_axi_l3_n_mem_BRESP),        // input wire [1 : 0] m_axi_l3_n_mem_BRESP
  .m_axi_l3_n_mem_BVALID(m_axi_l3_n_mem_BVALID),      // input wire m_axi_l3_n_mem_BVALID
  .m_axi_l3_n_mem_BREADY(m_axi_l3_n_mem_BREADY),      // output wire m_axi_l3_n_mem_BREADY
  .m_axi_l3_n_mem_ARADDR(m_axi_l3_n_mem_ARADDR),      // output wire [63 : 0] m_axi_l3_n_mem_ARADDR
  .m_axi_l3_n_mem_ARLEN(m_axi_l3_n_mem_ARLEN),        // output wire [7 : 0] m_axi_l3_n_mem_ARLEN
  .m_axi_l3_n_mem_ARSIZE(m_axi_l3_n_mem_ARSIZE),      // output wire [2 : 0] m_axi_l3_n_mem_ARSIZE
  .m_axi_l3_n_mem_ARBURST(m_axi_l3_n_mem_ARBURST),    // output wire [1 : 0] m_axi_l3_n_mem_ARBURST
  .m_axi_l3_n_mem_ARLOCK(m_axi_l3_n_mem_ARLOCK),      // output wire [1 : 0] m_axi_l3_n_mem_ARLOCK
  .m_axi_l3_n_mem_ARREGION(m_axi_l3_n_mem_ARREGION),  // output wire [3 : 0] m_axi_l3_n_mem_ARREGION
  .m_axi_l3_n_mem_ARCACHE(m_axi_l3_n_mem_ARCACHE),    // output wire [3 : 0] m_axi_l3_n_mem_ARCACHE
  .m_axi_l3_n_mem_ARPROT(m_axi_l3_n_mem_ARPROT),      // output wire [2 : 0] m_axi_l3_n_mem_ARPROT
  .m_axi_l3_n_mem_ARQOS(m_axi_l3_n_mem_ARQOS),        // output wire [3 : 0] m_axi_l3_n_mem_ARQOS
  .m_axi_l3_n_mem_ARVALID(m_axi_l3_n_mem_ARVALID),    // output wire m_axi_l3_n_mem_ARVALID
  .m_axi_l3_n_mem_ARREADY(m_axi_l3_n_mem_ARREADY),    // input wire m_axi_l3_n_mem_ARREADY
  .m_axi_l3_n_mem_RDATA(m_axi_l3_n_mem_RDATA),        // input wire [31 : 0] m_axi_l3_n_mem_RDATA
  .m_axi_l3_n_mem_RRESP(m_axi_l3_n_mem_RRESP),        // input wire [1 : 0] m_axi_l3_n_mem_RRESP
  .m_axi_l3_n_mem_RLAST(m_axi_l3_n_mem_RLAST),        // input wire m_axi_l3_n_mem_RLAST
  .m_axi_l3_n_mem_RVALID(m_axi_l3_n_mem_RVALID),      // input wire m_axi_l3_n_mem_RVALID
  .m_axi_l3_n_mem_RREADY(m_axi_l3_n_mem_RREADY)      // output wire m_axi_l3_n_mem_RREADY
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file l3_0.v when simulating
// the core, l3_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

