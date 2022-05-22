// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Apr  6 20:20:01 2021
// Host        : davidmin running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/davidmin/Downloads/pl_pcie_build/ip_repo/pci_virtual_bridge_0.1/src/down_rq_to_down_rq_and_cfg_mgmt/down_rq_to_down_rq_and_cfg_mgmt_stub.v
// Design      : down_rq_to_down_rq_and_cfg_mgmt
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsva2197-2MP-e-S-es1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_switch_v1_1_22_axis_switch,Vivado 2020.2" *)
module down_rq_to_down_rq_and_cfg_mgmt(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tkeep, s_axis_tlast, s_axis_tdest, s_axis_tuser, m_axis_tvalid, 
  m_axis_tready, m_axis_tdata, m_axis_tkeep, m_axis_tlast, m_axis_tdest, m_axis_tuser, 
  s_decode_err)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid[0:0],s_axis_tready[0:0],s_axis_tdata[127:0],s_axis_tkeep[15:0],s_axis_tlast[0:0],s_axis_tdest[1:0],s_axis_tuser[84:0],m_axis_tvalid[1:0],m_axis_tready[1:0],m_axis_tdata[255:0],m_axis_tkeep[31:0],m_axis_tlast[1:0],m_axis_tdest[3:0],m_axis_tuser[169:0],s_decode_err[0:0]" */;
  input aclk;
  input aresetn;
  input [0:0]s_axis_tvalid;
  output [0:0]s_axis_tready;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tkeep;
  input [0:0]s_axis_tlast;
  input [1:0]s_axis_tdest;
  input [84:0]s_axis_tuser;
  output [1:0]m_axis_tvalid;
  input [1:0]m_axis_tready;
  output [255:0]m_axis_tdata;
  output [31:0]m_axis_tkeep;
  output [1:0]m_axis_tlast;
  output [3:0]m_axis_tdest;
  output [169:0]m_axis_tuser;
  output [0:0]s_decode_err;
endmodule
