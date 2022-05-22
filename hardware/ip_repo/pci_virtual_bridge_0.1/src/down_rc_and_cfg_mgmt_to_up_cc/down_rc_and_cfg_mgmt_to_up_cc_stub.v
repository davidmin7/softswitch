// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Apr  6 20:39:16 2021
// Host        : davidmin running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/davidmin/Downloads/pl_pcie_build/ip_repo/pci_virtual_bridge_0.1/src/down_rc_and_cfg_mgmt_to_up_cc/down_rc_and_cfg_mgmt_to_up_cc_stub.v
// Design      : down_rc_and_cfg_mgmt_to_up_cc
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsva2197-2MP-e-S-es1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_switch_v1_1_22_axis_switch,Vivado 2020.2" *)
module down_rc_and_cfg_mgmt_to_up_cc(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tkeep, s_axis_tlast, s_axis_tuser, m_axis_tvalid, m_axis_tready, 
  m_axis_tdata, m_axis_tkeep, m_axis_tlast, m_axis_tuser, s_req_suppress, s_decode_err)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid[1:0],s_axis_tready[1:0],s_axis_tdata[255:0],s_axis_tkeep[31:0],s_axis_tlast[1:0],s_axis_tuser[65:0],m_axis_tvalid[0:0],m_axis_tready[0:0],m_axis_tdata[127:0],m_axis_tkeep[15:0],m_axis_tlast[0:0],m_axis_tuser[32:0],s_req_suppress[1:0],s_decode_err[1:0]" */;
  input aclk;
  input aresetn;
  input [1:0]s_axis_tvalid;
  output [1:0]s_axis_tready;
  input [255:0]s_axis_tdata;
  input [31:0]s_axis_tkeep;
  input [1:0]s_axis_tlast;
  input [65:0]s_axis_tuser;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [32:0]m_axis_tuser;
  input [1:0]s_req_suppress;
  output [1:0]s_decode_err;
endmodule
