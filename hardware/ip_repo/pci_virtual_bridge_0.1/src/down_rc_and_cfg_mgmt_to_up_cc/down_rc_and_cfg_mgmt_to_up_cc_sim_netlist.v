// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Apr  6 20:39:16 2021
// Host        : davidmin running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/davidmin/Downloads/pl_pcie_build/ip_repo/pci_virtual_bridge_0.1/src/down_rc_and_cfg_mgmt_to_up_cc/down_rc_and_cfg_mgmt_to_up_cc_sim_netlist.v
// Design      : down_rc_and_cfg_mgmt_to_up_cc
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsva2197-2MP-e-S-es1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "down_rc_and_cfg_mgmt_to_up_cc,axis_switch_v1_1_22_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_22_axis_switch,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module down_rc_and_cfg_mgmt_to_up_cc
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tuser,
    s_req_suppress,
    s_decode_err);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1]" *) input [1:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1]" *) output [1:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [127:0] [127:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [127:0] [255:128]" *) input [255:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [15:0] [15:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [15:0] [31:16]" *) input [31:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1]" *) input [1:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [32:0] [32:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [32:0] [65:33]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input [65:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output [0:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input [0:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP" *) output [15:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output [0:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output [32:0]m_axis_tuser;
  input [1:0]s_req_suppress;
  output [1:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [32:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire [255:0]s_axis_tdata;
  wire [31:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [65:0]s_axis_tuser;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;
  wire NLW_inst_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_wready_UNCONNECTED;
  wire [1:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [0:0]NLW_inst_arb_done_UNCONNECTED;
  wire [1:0]NLW_inst_arb_id_UNCONNECTED;
  wire [1:0]NLW_inst_arb_last_UNCONNECTED;
  wire [1:0]NLW_inst_arb_req_UNCONNECTED;
  wire [65:0]NLW_inst_arb_user_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [15:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_rresp_UNCONNECTED;
  wire [1:0]NLW_inst_s_decode_err_UNCONNECTED;

  assign s_decode_err[1] = \<const0> ;
  assign s_decode_err[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ARB_ALGORITHM = "0" *) 
  (* C_ARB_ON_MAX_XFERS = "1" *) 
  (* C_ARB_ON_NUM_CYCLES = "0" *) 
  (* C_ARB_ON_TLAST = "0" *) 
  (* C_AXIS_SIGNAL_SET = "155" *) 
  (* C_AXIS_TDATA_WIDTH = "128" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "33" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "0" *) 
  (* C_FAMILY = "versal" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "1" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "1'b0" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "2'b11" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "1'b0" *) 
  (* C_NUM_MI_SLOTS = "1" *) 
  (* C_NUM_SI_SLOTS = "2" *) 
  (* C_OUTPUT_REG = "0" *) 
  (* C_ROUTING_MODE = "0" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CTRL_REG_WIDTH = "15" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "2'b11" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "1'b0" *) 
  (* P_TPAYLOAD_WIDTH = "178" *) 
  down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[1:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[0]),
        .arb_gnt({1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[1:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[1:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[1:0]),
        .arb_sel(1'b0),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[65:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[15:0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_aclk(1'b0),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_aresetn(1'b0),
        .s_axi_ctrl_arready(NLW_inst_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_inst_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_inst_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_inst_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_inst_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_inst_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest({1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0}),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(NLW_inst_s_decode_err_UNCONNECTED[1:0]),
        .s_req_suppress(s_req_suppress));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_22_arb_rr" *) 
module down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_arb_rr
   (s_axis_tready,
    \arb_gnt_r_reg[0]_0 ,
    \arb_gnt_r_reg[1]_0 ,
    areset_reg,
    \gen_tdest_routing.busy_ns ,
    \arb_gnt_r_reg[1]_1 ,
    \gen_tdest_routing.busy_ns_0 ,
    \arb_gnt_r_reg[0]_1 ,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tuser,
    \arb_gnt_r_reg[1]_2 ,
    aclk,
    s_axis_tvalid,
    m_axis_tready,
    valid_i,
    arb_req_i__1,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_tdest_router.busy_r ,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tuser);
  output [1:0]s_axis_tready;
  output \arb_gnt_r_reg[0]_0 ;
  output \arb_gnt_r_reg[1]_0 ;
  output areset_reg;
  output \gen_tdest_routing.busy_ns ;
  output \arb_gnt_r_reg[1]_1 ;
  output \gen_tdest_routing.busy_ns_0 ;
  output \arb_gnt_r_reg[0]_1 ;
  output [0:0]m_axis_tvalid;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [32:0]m_axis_tuser;
  input \arb_gnt_r_reg[1]_2 ;
  input aclk;
  input [1:0]s_axis_tvalid;
  input [0:0]m_axis_tready;
  input valid_i;
  input [1:0]arb_req_i__1;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input [1:0]\gen_tdest_router.busy_r ;
  input [255:0]s_axis_tdata;
  input [31:0]s_axis_tkeep;
  input [1:0]s_axis_tlast;
  input [65:0]s_axis_tuser;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_done_i;
  wire [1:1]arb_gnt_ns;
  wire \arb_gnt_r[0]_i_1_n_0 ;
  wire \arb_gnt_r_reg[0]_0 ;
  wire \arb_gnt_r_reg[0]_1 ;
  wire \arb_gnt_r_reg[1]_0 ;
  wire \arb_gnt_r_reg[1]_1 ;
  wire \arb_gnt_r_reg[1]_2 ;
  wire [1:0]arb_req_i__1;
  wire arb_sel_i;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire areset_reg;
  wire \barrel_cntr[0]_i_1_n_0 ;
  wire \barrel_cntr[0]_i_2_n_0 ;
  wire \barrel_cntr_reg_n_0_[0] ;
  wire f_mux_return;
  wire [1:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [32:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire [1:0]port_priority_ns;
  wire [255:0]s_axis_tdata;
  wire [31:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [65:0]s_axis_tuser;
  wire [1:0]s_axis_tvalid;
  wire sel_i;
  wire valid_i;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    arb_busy_r_i_1
       (.I0(valid_i),
        .I1(arb_done_i),
        .I2(arb_busy_r),
        .O(arb_busy_ns));
  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_ns),
        .Q(arb_busy_r),
        .R(\arb_gnt_r_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \arb_gnt_r[0]_i_1 
       (.I0(arb_done_i),
        .I1(arb_busy_r),
        .I2(valid_i),
        .I3(sel_i),
        .O(\arb_gnt_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \arb_gnt_r[1]_i_1 
       (.I0(arb_done_i),
        .I1(arb_busy_r),
        .I2(valid_i),
        .I3(sel_i),
        .O(arb_gnt_ns));
  LUT6 #(
    .INIT(64'hEE00E0E000000000)) 
    \arb_gnt_r[1]_i_2 
       (.I0(\arb_gnt_r_reg[0]_0 ),
        .I1(\arb_gnt_r_reg[1]_0 ),
        .I2(s_axis_tvalid[0]),
        .I3(s_axis_tvalid[1]),
        .I4(arb_sel_i),
        .I5(m_axis_tready),
        .O(arb_done_i));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBA8C8A80)) 
    \arb_gnt_r[1]_i_4 
       (.I0(port_priority_ns[1]),
        .I1(arb_req_i__1[1]),
        .I2(\barrel_cntr_reg_n_0_[0] ),
        .I3(arb_req_i__1[0]),
        .I4(port_priority_ns[0]),
        .O(sel_i));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[0]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[0]_1 ),
        .R(\arb_gnt_r_reg[1]_2 ));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(arb_gnt_ns),
        .Q(\arb_gnt_r_reg[1]_1 ),
        .R(\arb_gnt_r_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \arb_sel_r[0]_i_1 
       (.I0(sel_i),
        .I1(valid_i),
        .I2(arb_busy_r),
        .I3(arb_done_i),
        .I4(arb_sel_i),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(arb_sel_i),
        .R(\arb_gnt_r_reg[1]_2 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \barrel_cntr[0]_i_1 
       (.I0(\arb_gnt_r_reg[1]_1 ),
        .I1(\arb_gnt_r_reg[0]_1 ),
        .I2(arb_busy_r),
        .O(\barrel_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \barrel_cntr[0]_i_2 
       (.I0(\barrel_cntr_reg_n_0_[0] ),
        .O(\barrel_cntr[0]_i_2_n_0 ));
  FDRE \barrel_cntr_reg[0] 
       (.C(aclk),
        .CE(\barrel_cntr[0]_i_1_n_0 ),
        .D(\barrel_cntr[0]_i_2_n_0 ),
        .Q(\barrel_cntr_reg_n_0_[0] ),
        .R(\arb_gnt_r_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEAEAEAAA)) 
    \busy_r[1]_i_1 
       (.I0(\arb_gnt_r_reg[1]_2 ),
        .I1(m_axis_tready),
        .I2(f_mux_return),
        .I3(\arb_gnt_r_reg[1]_0 ),
        .I4(\arb_gnt_r_reg[0]_0 ),
        .O(areset_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \busy_r[1]_i_2 
       (.I0(s_axis_tvalid[0]),
        .I1(s_axis_tvalid[1]),
        .I2(arb_sel_i),
        .O(f_mux_return));
  LUT6 #(
    .INIT(64'h0EEE0EEE0EEEEEEE)) 
    \gen_tdest_routing.busy_r[0]_i_1 
       (.I0(\gen_tdest_routing.busy_r_reg[0] ),
        .I1(\arb_gnt_r_reg[1]_1 ),
        .I2(m_axis_tready),
        .I3(f_mux_return),
        .I4(\arb_gnt_r_reg[1]_0 ),
        .I5(\arb_gnt_r_reg[0]_0 ),
        .O(\gen_tdest_routing.busy_ns ));
  LUT6 #(
    .INIT(64'h0EEE0EEE0EEEEEEE)) 
    \gen_tdest_routing.busy_r[0]_i_1__0 
       (.I0(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I1(\arb_gnt_r_reg[0]_1 ),
        .I2(m_axis_tready),
        .I3(f_mux_return),
        .I4(\arb_gnt_r_reg[1]_0 ),
        .I5(\arb_gnt_r_reg[0]_0 ),
        .O(\gen_tdest_routing.busy_ns_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(s_axis_tdata[0]),
        .I1(s_axis_tdata[128]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[100]_INST_0 
       (.I0(s_axis_tdata[100]),
        .I1(s_axis_tdata[228]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[100]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[101]_INST_0 
       (.I0(s_axis_tdata[101]),
        .I1(s_axis_tdata[229]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[101]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[102]_INST_0 
       (.I0(s_axis_tdata[102]),
        .I1(s_axis_tdata[230]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[102]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[103]_INST_0 
       (.I0(s_axis_tdata[103]),
        .I1(s_axis_tdata[231]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[103]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[104]_INST_0 
       (.I0(s_axis_tdata[104]),
        .I1(s_axis_tdata[232]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[104]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[105]_INST_0 
       (.I0(s_axis_tdata[105]),
        .I1(s_axis_tdata[233]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[105]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[106]_INST_0 
       (.I0(s_axis_tdata[106]),
        .I1(s_axis_tdata[234]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[106]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[107]_INST_0 
       (.I0(s_axis_tdata[107]),
        .I1(s_axis_tdata[235]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[107]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[108]_INST_0 
       (.I0(s_axis_tdata[108]),
        .I1(s_axis_tdata[236]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[108]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[109]_INST_0 
       (.I0(s_axis_tdata[109]),
        .I1(s_axis_tdata[237]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[109]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_tdata[138]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[110]_INST_0 
       (.I0(s_axis_tdata[110]),
        .I1(s_axis_tdata[238]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[110]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[111]_INST_0 
       (.I0(s_axis_tdata[111]),
        .I1(s_axis_tdata[239]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[111]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(s_axis_tdata[112]),
        .I1(s_axis_tdata[240]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[112]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[113]_INST_0 
       (.I0(s_axis_tdata[113]),
        .I1(s_axis_tdata[241]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[113]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[114]_INST_0 
       (.I0(s_axis_tdata[114]),
        .I1(s_axis_tdata[242]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[114]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[115]_INST_0 
       (.I0(s_axis_tdata[115]),
        .I1(s_axis_tdata[243]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[116]_INST_0 
       (.I0(s_axis_tdata[116]),
        .I1(s_axis_tdata[244]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[116]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[117]_INST_0 
       (.I0(s_axis_tdata[117]),
        .I1(s_axis_tdata[245]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[117]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[118]_INST_0 
       (.I0(s_axis_tdata[118]),
        .I1(s_axis_tdata[246]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[118]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[119]_INST_0 
       (.I0(s_axis_tdata[119]),
        .I1(s_axis_tdata[247]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[119]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[139]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[120]_INST_0 
       (.I0(s_axis_tdata[120]),
        .I1(s_axis_tdata[248]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[120]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[121]_INST_0 
       (.I0(s_axis_tdata[121]),
        .I1(s_axis_tdata[249]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[121]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[122]_INST_0 
       (.I0(s_axis_tdata[122]),
        .I1(s_axis_tdata[250]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[122]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[123]_INST_0 
       (.I0(s_axis_tdata[123]),
        .I1(s_axis_tdata[251]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[123]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[124]_INST_0 
       (.I0(s_axis_tdata[124]),
        .I1(s_axis_tdata[252]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[124]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[125]_INST_0 
       (.I0(s_axis_tdata[125]),
        .I1(s_axis_tdata[253]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[125]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[126]_INST_0 
       (.I0(s_axis_tdata[126]),
        .I1(s_axis_tdata[254]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[126]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[127]_INST_0 
       (.I0(s_axis_tdata[127]),
        .I1(s_axis_tdata[255]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[127]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(s_axis_tdata[12]),
        .I1(s_axis_tdata[140]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(s_axis_tdata[13]),
        .I1(s_axis_tdata[141]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[142]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[143]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(s_axis_tdata[16]),
        .I1(s_axis_tdata[144]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[145]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(s_axis_tdata[18]),
        .I1(s_axis_tdata[146]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[147]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[129]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[148]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[149]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(s_axis_tdata[22]),
        .I1(s_axis_tdata[150]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[151]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(s_axis_tdata[24]),
        .I1(s_axis_tdata[152]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(s_axis_tdata[25]),
        .I1(s_axis_tdata[153]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(s_axis_tdata[26]),
        .I1(s_axis_tdata[154]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(s_axis_tdata[27]),
        .I1(s_axis_tdata[155]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(s_axis_tdata[28]),
        .I1(s_axis_tdata[156]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(s_axis_tdata[29]),
        .I1(s_axis_tdata[157]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[130]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(s_axis_tdata[30]),
        .I1(s_axis_tdata[158]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(s_axis_tdata[31]),
        .I1(s_axis_tdata[159]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(s_axis_tdata[32]),
        .I1(s_axis_tdata[160]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(s_axis_tdata[33]),
        .I1(s_axis_tdata[161]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(s_axis_tdata[34]),
        .I1(s_axis_tdata[162]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(s_axis_tdata[35]),
        .I1(s_axis_tdata[163]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(s_axis_tdata[36]),
        .I1(s_axis_tdata[164]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(s_axis_tdata[37]),
        .I1(s_axis_tdata[165]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(s_axis_tdata[38]),
        .I1(s_axis_tdata[166]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(s_axis_tdata[39]),
        .I1(s_axis_tdata[167]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(s_axis_tdata[3]),
        .I1(s_axis_tdata[131]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(s_axis_tdata[40]),
        .I1(s_axis_tdata[168]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(s_axis_tdata[41]),
        .I1(s_axis_tdata[169]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(s_axis_tdata[42]),
        .I1(s_axis_tdata[170]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(s_axis_tdata[43]),
        .I1(s_axis_tdata[171]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(s_axis_tdata[44]),
        .I1(s_axis_tdata[172]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(s_axis_tdata[45]),
        .I1(s_axis_tdata[173]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(s_axis_tdata[46]),
        .I1(s_axis_tdata[174]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(s_axis_tdata[47]),
        .I1(s_axis_tdata[175]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(s_axis_tdata[48]),
        .I1(s_axis_tdata[176]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(s_axis_tdata[49]),
        .I1(s_axis_tdata[177]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[132]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(s_axis_tdata[50]),
        .I1(s_axis_tdata[178]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(s_axis_tdata[51]),
        .I1(s_axis_tdata[179]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(s_axis_tdata[52]),
        .I1(s_axis_tdata[180]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(s_axis_tdata[53]),
        .I1(s_axis_tdata[181]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(s_axis_tdata[54]),
        .I1(s_axis_tdata[182]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(s_axis_tdata[55]),
        .I1(s_axis_tdata[183]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(s_axis_tdata[56]),
        .I1(s_axis_tdata[184]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(s_axis_tdata[57]),
        .I1(s_axis_tdata[185]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(s_axis_tdata[58]),
        .I1(s_axis_tdata[186]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(s_axis_tdata[59]),
        .I1(s_axis_tdata[187]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(s_axis_tdata[5]),
        .I1(s_axis_tdata[133]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(s_axis_tdata[60]),
        .I1(s_axis_tdata[188]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(s_axis_tdata[61]),
        .I1(s_axis_tdata[189]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(s_axis_tdata[62]),
        .I1(s_axis_tdata[190]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(s_axis_tdata[63]),
        .I1(s_axis_tdata[191]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(s_axis_tdata[64]),
        .I1(s_axis_tdata[192]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(s_axis_tdata[65]),
        .I1(s_axis_tdata[193]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(s_axis_tdata[66]),
        .I1(s_axis_tdata[194]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(s_axis_tdata[67]),
        .I1(s_axis_tdata[195]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(s_axis_tdata[68]),
        .I1(s_axis_tdata[196]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(s_axis_tdata[69]),
        .I1(s_axis_tdata[197]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(s_axis_tdata[6]),
        .I1(s_axis_tdata[134]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(s_axis_tdata[70]),
        .I1(s_axis_tdata[198]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(s_axis_tdata[71]),
        .I1(s_axis_tdata[199]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(s_axis_tdata[72]),
        .I1(s_axis_tdata[200]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(s_axis_tdata[73]),
        .I1(s_axis_tdata[201]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(s_axis_tdata[74]),
        .I1(s_axis_tdata[202]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(s_axis_tdata[75]),
        .I1(s_axis_tdata[203]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(s_axis_tdata[76]),
        .I1(s_axis_tdata[204]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(s_axis_tdata[77]),
        .I1(s_axis_tdata[205]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(s_axis_tdata[78]),
        .I1(s_axis_tdata[206]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(s_axis_tdata[79]),
        .I1(s_axis_tdata[207]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[135]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(s_axis_tdata[80]),
        .I1(s_axis_tdata[208]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(s_axis_tdata[81]),
        .I1(s_axis_tdata[209]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(s_axis_tdata[82]),
        .I1(s_axis_tdata[210]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(s_axis_tdata[83]),
        .I1(s_axis_tdata[211]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(s_axis_tdata[84]),
        .I1(s_axis_tdata[212]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(s_axis_tdata[85]),
        .I1(s_axis_tdata[213]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(s_axis_tdata[86]),
        .I1(s_axis_tdata[214]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(s_axis_tdata[87]),
        .I1(s_axis_tdata[215]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(s_axis_tdata[88]),
        .I1(s_axis_tdata[216]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(s_axis_tdata[89]),
        .I1(s_axis_tdata[217]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(s_axis_tdata[8]),
        .I1(s_axis_tdata[136]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(s_axis_tdata[90]),
        .I1(s_axis_tdata[218]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(s_axis_tdata[91]),
        .I1(s_axis_tdata[219]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(s_axis_tdata[92]),
        .I1(s_axis_tdata[220]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(s_axis_tdata[93]),
        .I1(s_axis_tdata[221]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(s_axis_tdata[94]),
        .I1(s_axis_tdata[222]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(s_axis_tdata[95]),
        .I1(s_axis_tdata[223]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(s_axis_tdata[96]),
        .I1(s_axis_tdata[224]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[96]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[97]_INST_0 
       (.I0(s_axis_tdata[97]),
        .I1(s_axis_tdata[225]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[97]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[98]_INST_0 
       (.I0(s_axis_tdata[98]),
        .I1(s_axis_tdata[226]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[98]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[99]_INST_0 
       (.I0(s_axis_tdata[99]),
        .I1(s_axis_tdata[227]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[99]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(s_axis_tdata[9]),
        .I1(s_axis_tdata[137]),
        .I2(arb_sel_i),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(s_axis_tkeep[0]),
        .I1(s_axis_tkeep[16]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[10]_INST_0 
       (.I0(s_axis_tkeep[10]),
        .I1(s_axis_tkeep[26]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[10]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[11]_INST_0 
       (.I0(s_axis_tkeep[11]),
        .I1(s_axis_tkeep[27]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[11]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[12]_INST_0 
       (.I0(s_axis_tkeep[12]),
        .I1(s_axis_tkeep[28]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[12]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[13]_INST_0 
       (.I0(s_axis_tkeep[13]),
        .I1(s_axis_tkeep[29]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[13]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[14]_INST_0 
       (.I0(s_axis_tkeep[14]),
        .I1(s_axis_tkeep[30]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[14]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[15]_INST_0 
       (.I0(s_axis_tkeep[15]),
        .I1(s_axis_tkeep[31]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[15]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[1]_INST_0 
       (.I0(s_axis_tkeep[1]),
        .I1(s_axis_tkeep[17]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[2]_INST_0 
       (.I0(s_axis_tkeep[2]),
        .I1(s_axis_tkeep[18]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[3]_INST_0 
       (.I0(s_axis_tkeep[3]),
        .I1(s_axis_tkeep[19]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[4]_INST_0 
       (.I0(s_axis_tkeep[4]),
        .I1(s_axis_tkeep[20]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[4]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[5]_INST_0 
       (.I0(s_axis_tkeep[5]),
        .I1(s_axis_tkeep[21]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[6]_INST_0 
       (.I0(s_axis_tkeep[6]),
        .I1(s_axis_tkeep[22]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[6]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[7]_INST_0 
       (.I0(s_axis_tkeep[7]),
        .I1(s_axis_tkeep[23]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[7]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[8]_INST_0 
       (.I0(s_axis_tkeep[8]),
        .I1(s_axis_tkeep[24]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[8]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tkeep[9]_INST_0 
       (.I0(s_axis_tkeep[9]),
        .I1(s_axis_tkeep[25]),
        .I2(arb_sel_i),
        .O(m_axis_tkeep[9]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(s_axis_tlast[0]),
        .I1(s_axis_tlast[1]),
        .I2(arb_sel_i),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[0]_INST_0 
       (.I0(s_axis_tuser[0]),
        .I1(s_axis_tuser[33]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[10]_INST_0 
       (.I0(s_axis_tuser[10]),
        .I1(s_axis_tuser[43]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[10]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[11]_INST_0 
       (.I0(s_axis_tuser[11]),
        .I1(s_axis_tuser[44]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[11]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[12]_INST_0 
       (.I0(s_axis_tuser[12]),
        .I1(s_axis_tuser[45]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[12]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[13]_INST_0 
       (.I0(s_axis_tuser[13]),
        .I1(s_axis_tuser[46]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[13]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[14]_INST_0 
       (.I0(s_axis_tuser[14]),
        .I1(s_axis_tuser[47]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[14]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[15]_INST_0 
       (.I0(s_axis_tuser[15]),
        .I1(s_axis_tuser[48]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[15]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[16]_INST_0 
       (.I0(s_axis_tuser[16]),
        .I1(s_axis_tuser[49]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[16]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[17]_INST_0 
       (.I0(s_axis_tuser[17]),
        .I1(s_axis_tuser[50]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[17]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[18]_INST_0 
       (.I0(s_axis_tuser[18]),
        .I1(s_axis_tuser[51]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[18]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[19]_INST_0 
       (.I0(s_axis_tuser[19]),
        .I1(s_axis_tuser[52]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[19]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[1]_INST_0 
       (.I0(s_axis_tuser[1]),
        .I1(s_axis_tuser[34]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[1]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[20]_INST_0 
       (.I0(s_axis_tuser[20]),
        .I1(s_axis_tuser[53]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[20]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[21]_INST_0 
       (.I0(s_axis_tuser[21]),
        .I1(s_axis_tuser[54]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[21]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[22]_INST_0 
       (.I0(s_axis_tuser[22]),
        .I1(s_axis_tuser[55]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[22]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[23]_INST_0 
       (.I0(s_axis_tuser[23]),
        .I1(s_axis_tuser[56]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[23]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[24]_INST_0 
       (.I0(s_axis_tuser[24]),
        .I1(s_axis_tuser[57]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[24]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[25]_INST_0 
       (.I0(s_axis_tuser[25]),
        .I1(s_axis_tuser[58]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[25]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[26]_INST_0 
       (.I0(s_axis_tuser[26]),
        .I1(s_axis_tuser[59]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[26]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[27]_INST_0 
       (.I0(s_axis_tuser[27]),
        .I1(s_axis_tuser[60]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[27]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[28]_INST_0 
       (.I0(s_axis_tuser[28]),
        .I1(s_axis_tuser[61]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[28]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[29]_INST_0 
       (.I0(s_axis_tuser[29]),
        .I1(s_axis_tuser[62]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[29]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[2]_INST_0 
       (.I0(s_axis_tuser[2]),
        .I1(s_axis_tuser[35]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[30]_INST_0 
       (.I0(s_axis_tuser[30]),
        .I1(s_axis_tuser[63]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[30]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[31]_INST_0 
       (.I0(s_axis_tuser[31]),
        .I1(s_axis_tuser[64]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[31]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[32]_INST_0 
       (.I0(s_axis_tuser[32]),
        .I1(s_axis_tuser[65]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[32]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[3]_INST_0 
       (.I0(s_axis_tuser[3]),
        .I1(s_axis_tuser[36]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[3]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[4]_INST_0 
       (.I0(s_axis_tuser[4]),
        .I1(s_axis_tuser[37]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[5]_INST_0 
       (.I0(s_axis_tuser[5]),
        .I1(s_axis_tuser[38]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[5]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[6]_INST_0 
       (.I0(s_axis_tuser[6]),
        .I1(s_axis_tuser[39]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[6]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[7]_INST_0 
       (.I0(s_axis_tuser[7]),
        .I1(s_axis_tuser[40]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[7]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[8]_INST_0 
       (.I0(s_axis_tuser[8]),
        .I1(s_axis_tuser[41]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[8]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axis_tuser[9]_INST_0 
       (.I0(s_axis_tuser[9]),
        .I1(s_axis_tuser[42]),
        .I2(arb_sel_i),
        .O(m_axis_tuser[9]));
  LUT6 #(
    .INIT(64'hD8D8D8D8D8D8D800)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(arb_sel_i),
        .I1(s_axis_tvalid[1]),
        .I2(s_axis_tvalid[0]),
        .I3(\arb_gnt_r_reg[1]_0 ),
        .I4(\arb_gnt_r_reg[0]_1 ),
        .I5(\gen_tdest_router.busy_r [0]),
        .O(m_axis_tvalid));
  FDRE \port_priority_r_reg[0] 
       (.C(aclk),
        .CE(\barrel_cntr[0]_i_1_n_0 ),
        .D(port_priority_ns[0]),
        .Q(port_priority_ns[1]),
        .R(\arb_gnt_r_reg[1]_2 ));
  FDSE \port_priority_r_reg[1] 
       (.C(aclk),
        .CE(\barrel_cntr[0]_i_1_n_0 ),
        .D(port_priority_ns[1]),
        .Q(port_priority_ns[0]),
        .S(\arb_gnt_r_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axis_tready[0]_INST_0 
       (.I0(s_axis_tvalid[0]),
        .I1(\arb_gnt_r_reg[0]_0 ),
        .I2(m_axis_tready),
        .O(s_axis_tready[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axis_tready[0]_INST_0_i_1 
       (.I0(\arb_gnt_r_reg[0]_1 ),
        .I1(\gen_tdest_router.busy_r [0]),
        .O(\arb_gnt_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axis_tready[1]_INST_0 
       (.I0(s_axis_tvalid[1]),
        .I1(\arb_gnt_r_reg[1]_0 ),
        .I2(m_axis_tready),
        .O(s_axis_tready[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axis_tready[1]_INST_0_i_1 
       (.I0(\arb_gnt_r_reg[1]_1 ),
        .I1(\gen_tdest_router.busy_r [1]),
        .O(\arb_gnt_r_reg[1]_0 ));
endmodule

(* C_ARB_ALGORITHM = "0" *) (* C_ARB_ON_MAX_XFERS = "1" *) (* C_ARB_ON_NUM_CYCLES = "0" *) 
(* C_ARB_ON_TLAST = "0" *) (* C_AXIS_SIGNAL_SET = "155" *) (* C_AXIS_TDATA_WIDTH = "128" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "33" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "0" *) (* C_FAMILY = "versal" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "1" *) (* C_M_AXIS_BASETDEST_ARRAY = "1'b0" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "2'b11" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "1'b0" *) (* C_NUM_MI_SLOTS = "1" *) 
(* C_NUM_SI_SLOTS = "2" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "0" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "15" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* ORIG_REF_NAME = "axis_switch_v1_1_22_axis_switch" *) (* P_DECODER_CONNECTIVITY_ARRAY = "2'b11" *) 
(* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "1'b0" *) (* P_TPAYLOAD_WIDTH = "178" *) 
module down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    arb_req,
    arb_done,
    arb_gnt,
    arb_sel,
    arb_last,
    arb_id,
    arb_dest,
    arb_user,
    s_req_suppress,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_decode_err);
  input aclk;
  input aresetn;
  input aclken;
  input [1:0]s_axis_tvalid;
  output [1:0]s_axis_tready;
  input [255:0]s_axis_tdata;
  input [31:0]s_axis_tstrb;
  input [31:0]s_axis_tkeep;
  input [1:0]s_axis_tlast;
  input [1:0]s_axis_tid;
  input [1:0]s_axis_tdest;
  input [65:0]s_axis_tuser;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [32:0]m_axis_tuser;
  output [1:0]arb_req;
  output [0:0]arb_done;
  input [1:0]arb_gnt;
  input [0:0]arb_sel;
  output [1:0]arb_last;
  output [1:0]arb_id;
  output [1:0]arb_dest;
  output [65:0]arb_user;
  input [1:0]s_req_suppress;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [1:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire [1:0]arb_gnt_i;
  wire areset;
  wire aresetn;
  wire \gen_decoder[0].axisc_decoder_0_n_0 ;
  wire \gen_decoder[1].axisc_decoder_0_n_0 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_3 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_4 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_5 ;
  wire [1:0]\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__1 ;
  wire \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/valid_i ;
  wire [1:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [32:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire [255:0]s_axis_tdata;
  wire [31:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [65:0]s_axis_tuser;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;

  assign arb_dest[1] = \<const0> ;
  assign arb_dest[0] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[65] = \<const0> ;
  assign arb_user[64] = \<const0> ;
  assign arb_user[63] = \<const0> ;
  assign arb_user[62] = \<const0> ;
  assign arb_user[61] = \<const0> ;
  assign arb_user[60] = \<const0> ;
  assign arb_user[59] = \<const0> ;
  assign arb_user[58] = \<const0> ;
  assign arb_user[57] = \<const0> ;
  assign arb_user[56] = \<const0> ;
  assign arb_user[55] = \<const0> ;
  assign arb_user[54] = \<const0> ;
  assign arb_user[53] = \<const0> ;
  assign arb_user[52] = \<const0> ;
  assign arb_user[51] = \<const0> ;
  assign arb_user[50] = \<const0> ;
  assign arb_user[49] = \<const0> ;
  assign arb_user[48] = \<const0> ;
  assign arb_user[47] = \<const0> ;
  assign arb_user[46] = \<const0> ;
  assign arb_user[45] = \<const0> ;
  assign arb_user[44] = \<const0> ;
  assign arb_user[43] = \<const0> ;
  assign arb_user[42] = \<const0> ;
  assign arb_user[41] = \<const0> ;
  assign arb_user[40] = \<const0> ;
  assign arb_user[39] = \<const0> ;
  assign arb_user[38] = \<const0> ;
  assign arb_user[37] = \<const0> ;
  assign arb_user[36] = \<const0> ;
  assign arb_user[35] = \<const0> ;
  assign arb_user[34] = \<const0> ;
  assign arb_user[33] = \<const0> ;
  assign arb_user[32] = \<const0> ;
  assign arb_user[31] = \<const0> ;
  assign arb_user[30] = \<const0> ;
  assign arb_user[29] = \<const0> ;
  assign arb_user[28] = \<const0> ;
  assign arb_user[27] = \<const0> ;
  assign arb_user[26] = \<const0> ;
  assign arb_user[25] = \<const0> ;
  assign arb_user[24] = \<const0> ;
  assign arb_user[23] = \<const0> ;
  assign arb_user[22] = \<const0> ;
  assign arb_user[21] = \<const0> ;
  assign arb_user[20] = \<const0> ;
  assign arb_user[19] = \<const0> ;
  assign arb_user[18] = \<const0> ;
  assign arb_user[17] = \<const0> ;
  assign arb_user[16] = \<const0> ;
  assign arb_user[15] = \<const0> ;
  assign arb_user[14] = \<const0> ;
  assign arb_user[13] = \<const0> ;
  assign arb_user[12] = \<const0> ;
  assign arb_user[11] = \<const0> ;
  assign arb_user[10] = \<const0> ;
  assign arb_user[9] = \<const0> ;
  assign arb_user[8] = \<const0> ;
  assign arb_user[7] = \<const0> ;
  assign arb_user[6] = \<const0> ;
  assign arb_user[5] = \<const0> ;
  assign arb_user[4] = \<const0> ;
  assign arb_user[3] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const0> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_decode_err[1] = \<const0> ;
  assign s_decode_err[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i[0]),
        .arb_req_i__1(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__1 [0]),
        .areset(areset),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .s_axis_tvalid(s_axis_tvalid[0]),
        .s_req_suppress(s_req_suppress[0]));
  down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder_0 \gen_decoder[1].axisc_decoder_0 
       (.aclk(aclk),
        .arb_busy_r_reg(\gen_decoder[0].axisc_decoder_0_n_0 ),
        .arb_gnt_i(arb_gnt_i),
        .arb_req_i__1(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__1 [1]),
        .areset(areset),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_0 ),
        .s_axis_tvalid(s_axis_tvalid),
        .s_req_suppress(s_req_suppress),
        .valid_i(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/valid_i ));
  down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch_arbiter \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r_reg[0] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_3 ),
        .\arb_gnt_r_reg[1] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_4 ),
        .arb_req_i__1(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__1 ),
        .areset(areset),
        .areset_reg_0(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_5 ),
        .aresetn(aresetn),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_decoder[1].axisc_decoder_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .valid_i(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/valid_i ));
  down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.aclk(aclk),
        .\busy_r_reg[0] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_5 ),
        .\busy_r_reg[0]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_3 ),
        .\busy_r_reg[1] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_4 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_22_axis_switch_arbiter" *) 
module down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch_arbiter
   (areset,
    s_axis_tready,
    \arb_gnt_r_reg[0] ,
    \arb_gnt_r_reg[1] ,
    areset_reg_0,
    \gen_tdest_routing.busy_ns ,
    arb_gnt_i,
    \gen_tdest_routing.busy_ns_0 ,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tuser,
    aclk,
    s_axis_tvalid,
    m_axis_tready,
    valid_i,
    arb_req_i__1,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_tdest_router.busy_r ,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tuser,
    aresetn);
  output areset;
  output [1:0]s_axis_tready;
  output \arb_gnt_r_reg[0] ;
  output \arb_gnt_r_reg[1] ;
  output areset_reg_0;
  output \gen_tdest_routing.busy_ns ;
  output [1:0]arb_gnt_i;
  output \gen_tdest_routing.busy_ns_0 ;
  output [0:0]m_axis_tvalid;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [32:0]m_axis_tuser;
  input aclk;
  input [1:0]s_axis_tvalid;
  input [0:0]m_axis_tready;
  input valid_i;
  input [1:0]arb_req_i__1;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input [1:0]\gen_tdest_router.busy_r ;
  input [255:0]s_axis_tdata;
  input [31:0]s_axis_tkeep;
  input [1:0]s_axis_tlast;
  input [65:0]s_axis_tuser;
  input aresetn;

  wire aclk;
  wire [1:0]arb_gnt_i;
  wire \arb_gnt_r_reg[0] ;
  wire \arb_gnt_r_reg[1] ;
  wire [1:0]arb_req_i__1;
  wire areset;
  wire areset_reg_0;
  wire aresetn;
  wire [1:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [32:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire p_0_in;
  wire [255:0]s_axis_tdata;
  wire [31:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [65:0]s_axis_tuser;
  wire [1:0]s_axis_tvalid;
  wire valid_i;

  LUT1 #(
    .INIT(2'h1)) 
    areset_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE areset_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset),
        .R(1'b0));
  down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_arb_rr \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0 
       (.aclk(aclk),
        .\arb_gnt_r_reg[0]_0 (\arb_gnt_r_reg[0] ),
        .\arb_gnt_r_reg[0]_1 (arb_gnt_i[0]),
        .\arb_gnt_r_reg[1]_0 (\arb_gnt_r_reg[1] ),
        .\arb_gnt_r_reg[1]_1 (arb_gnt_i[1]),
        .\arb_gnt_r_reg[1]_2 (areset),
        .arb_req_i__1(arb_req_i__1),
        .areset_reg(areset_reg_0),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0] ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_tdest_routing.busy_r_reg[0]_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .valid_i(valid_i));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_22_axisc_arb_responder" *) 
module down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_arb_responder
   (\gen_tdest_router.busy_r ,
    \busy_r_reg[0]_0 ,
    \busy_r_reg[1]_0 ,
    aclk,
    \busy_r_reg[0]_1 );
  output [1:0]\gen_tdest_router.busy_r ;
  input \busy_r_reg[0]_0 ;
  input \busy_r_reg[1]_0 ;
  input aclk;
  input \busy_r_reg[0]_1 ;

  wire aclk;
  wire \busy_r_reg[0]_0 ;
  wire \busy_r_reg[0]_1 ;
  wire \busy_r_reg[1]_0 ;
  wire [1:0]\gen_tdest_router.busy_r ;

  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[0]_1 ),
        .Q(\gen_tdest_router.busy_r [0]),
        .R(\busy_r_reg[0]_0 ));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[1]_0 ),
        .Q(\gen_tdest_router.busy_r [1]),
        .R(\busy_r_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_22_axisc_decoder" *) 
module down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    arb_req_i__1,
    areset,
    \gen_tdest_routing.busy_ns ,
    aclk,
    s_req_suppress,
    s_axis_tvalid,
    arb_gnt_i);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]arb_req_i__1;
  input areset;
  input \gen_tdest_routing.busy_ns ;
  input aclk;
  input [0:0]s_req_suppress;
  input [0:0]s_axis_tvalid;
  input [0:0]arb_gnt_i;

  wire aclk;
  wire [0:0]arb_gnt_i;
  wire [0:0]arb_req_i__1;
  wire areset;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_req_suppress;

  LUT4 #(
    .INIT(16'h0004)) 
    \arb_gnt_r[1]_i_6 
       (.I0(s_req_suppress),
        .I1(s_axis_tvalid),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I3(arb_gnt_i),
        .O(arb_req_i__1));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_22_axisc_decoder" *) 
module down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder_0
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    arb_req_i__1,
    valid_i,
    areset,
    \gen_tdest_routing.busy_ns ,
    aclk,
    s_req_suppress,
    s_axis_tvalid,
    arb_gnt_i,
    arb_busy_r_reg);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]arb_req_i__1;
  output valid_i;
  input areset;
  input \gen_tdest_routing.busy_ns ;
  input aclk;
  input [1:0]s_req_suppress;
  input [1:0]s_axis_tvalid;
  input [1:0]arb_gnt_i;
  input arb_busy_r_reg;

  wire aclk;
  wire arb_busy_r_reg;
  wire [1:0]arb_gnt_i;
  wire [0:0]arb_req_i__1;
  wire areset;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;
  wire valid_i;

  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \arb_gnt_r[1]_i_3 
       (.I0(arb_req_i__1),
        .I1(arb_gnt_i[0]),
        .I2(arb_busy_r_reg),
        .I3(s_axis_tvalid[0]),
        .I4(s_req_suppress[0]),
        .O(valid_i));
  LUT4 #(
    .INIT(16'h0004)) 
    \arb_gnt_r[1]_i_5 
       (.I0(s_req_suppress[1]),
        .I1(s_axis_tvalid[1]),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I3(arb_gnt_i[1]),
        .O(arb_req_i__1));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_22_axisc_transfer_mux" *) 
module down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_transfer_mux
   (\gen_tdest_router.busy_r ,
    \busy_r_reg[0] ,
    \busy_r_reg[1] ,
    aclk,
    \busy_r_reg[0]_0 );
  output [1:0]\gen_tdest_router.busy_r ;
  input \busy_r_reg[0] ;
  input \busy_r_reg[1] ;
  input aclk;
  input \busy_r_reg[0]_0 ;

  wire aclk;
  wire \busy_r_reg[0] ;
  wire \busy_r_reg[0]_0 ;
  wire \busy_r_reg[1] ;
  wire [1:0]\gen_tdest_router.busy_r ;

  down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_arb_responder \gen_tdest_router.axisc_arb_responder 
       (.aclk(aclk),
        .\busy_r_reg[0]_0 (\busy_r_reg[0] ),
        .\busy_r_reg[0]_1 (\busy_r_reg[0]_0 ),
        .\busy_r_reg[1]_0 (\busy_r_reg[1] ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
