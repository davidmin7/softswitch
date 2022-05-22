`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UIUC
// Engineer: David Min
// 
// Create Date: 
// Design Name: 
// Module Name: pci_virtual_bridge_v0_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

	module pci_virtual_bridge_v0_1 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface s_axis_up_rc
		parameter integer TDATA_WIDTH	= 128,
		
		parameter integer TKEEP_WIDTH   = 4,
		
        parameter integer RQ_TUSER_WIDTH = 85,
        parameter integer CQ_TUSER_WIDTH = 108,
        parameter integer RC_TUSER_WIDTH = 75,
        parameter integer CC_TUSER_WIDTH = 33
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface s_axis_up_rc
		output wire  s_axis_up_rc_tready,
		input wire [TDATA_WIDTH-1 : 0] s_axis_up_rc_tdata,
		input wire [TKEEP_WIDTH-1 : 0] s_axis_up_rc_tkeep,
		input wire [RC_TUSER_WIDTH-1 : 0] s_axis_up_rc_tuser,
		input wire  s_axis_up_rc_tlast,
		input wire  s_axis_up_rc_tvalid,

		// Ports of Axi Slave Bus Interface s_axis_up_cq
		output wire  s_axis_up_cq_tready,
		input wire [TDATA_WIDTH-1 : 0] s_axis_up_cq_tdata,
		input wire [TKEEP_WIDTH-1 : 0] s_axis_up_cq_tkeep,
		input wire [CQ_TUSER_WIDTH-1 : 0] s_axis_up_cq_tuser,
		input wire  s_axis_up_cq_tlast,
		input wire  s_axis_up_cq_tvalid,

		// Ports of Axi Slave Bus Interface s_axis_down_rc
		output wire  s_axis_down_rc_tready,
		input wire [TDATA_WIDTH-1 : 0] s_axis_down_rc_tdata,
		input wire [TKEEP_WIDTH-1 : 0] s_axis_down_rc_tkeep,
		input wire [RC_TUSER_WIDTH-1 : 0] s_axis_down_rc_tuser,
		input wire  s_axis_down_rc_tlast,
		input wire  s_axis_down_rc_tvalid,

		// Ports of Axi Slave Bus Interface s_axis_down_cq
		output wire  s_axis_down_cq_tready,
		input wire [TDATA_WIDTH-1 : 0] s_axis_down_cq_tdata,
		input wire [TKEEP_WIDTH-1 : 0] s_axis_down_cq_tkeep,
		input wire [CQ_TUSER_WIDTH-1 : 0] s_axis_down_cq_tuser,
		input wire  s_axis_down_cq_tlast,
		input wire  s_axis_down_cq_tvalid,
		
		output wire  s_axis_down_rq_temp_tready,
		input wire [1 : 0] s_axis_down_rq_temp_tdest,
		input wire [TDATA_WIDTH-1 : 0] s_axis_down_rq_temp_tdata,
		input wire [TKEEP_WIDTH-1 : 0] s_axis_down_rq_temp_tkeep,
		input wire [RC_TUSER_WIDTH-1 : 0] s_axis_down_rq_temp_tuser,
		input wire  s_axis_down_rq_temp_tlast,
		input wire  s_axis_down_rq_temp_tvalid,		

		// Ports of Axi Master Bus Interface m_axis_up_rq
		output wire [1 : 0] m_axis_down_rq_temp_tdest,
		output wire  m_axis_down_rq_temp_tvalid,
		output wire [TDATA_WIDTH-1 : 0] m_axis_down_rq_temp_tdata,
		output wire [TKEEP_WIDTH-1 : 0] m_axis_down_rq_temp_tkeep,
		output wire [RQ_TUSER_WIDTH-1 : 0] m_axis_down_rq_temp_tuser,
		output wire  m_axis_down_rq_temp_tlast,
		input wire  m_axis_down_rq_temp_tready,

		// Ports of Axi Master Bus Interface m_axis_up_rq
		output wire  m_axis_up_rq_tvalid,
		output wire [TDATA_WIDTH-1 : 0] m_axis_up_rq_tdata,
		output wire [TKEEP_WIDTH-1 : 0] m_axis_up_rq_tkeep,
		output wire [RQ_TUSER_WIDTH-1 : 0] m_axis_up_rq_tuser,
		output wire  m_axis_up_rq_tlast,
		input wire  m_axis_up_rq_tready,

		// Ports of Axi Master Bus Interface m_axis_up_cc
		output wire  m_axis_up_cc_tvalid,
		output wire [TDATA_WIDTH-1 : 0] m_axis_up_cc_tdata,
		output wire [TKEEP_WIDTH-1 : 0] m_axis_up_cc_tkeep,
		output wire [CC_TUSER_WIDTH-1 : 0] m_axis_up_cc_tuser,
		output wire  m_axis_up_cc_tlast,
		input wire  m_axis_up_cc_tready,

		// Ports of Axi Master Bus Interface m_axis_down_rq
		output wire  m_axis_down_rq_tvalid,
		output wire [TDATA_WIDTH-1 : 0] m_axis_down_rq_tdata,
		output wire [TKEEP_WIDTH-1 : 0] m_axis_down_rq_tkeep,
		output wire [RQ_TUSER_WIDTH-1 : 0] m_axis_down_rq_tuser,
		output wire  m_axis_down_rq_tlast,
		input wire  m_axis_down_rq_tready,

		// Ports of Axi Master Bus Interface m_axis_down_cc
		output wire  m_axis_down_cc_tvalid,
		output wire [TDATA_WIDTH-1 : 0] m_axis_down_cc_tdata,
		output wire [TKEEP_WIDTH-1 : 0] m_axis_down_cc_tkeep,
		output wire [CC_TUSER_WIDTH-1 : 0] m_axis_down_cc_tuser,
		output wire  m_axis_down_cc_tlast,
		input wire  m_axis_down_cc_tready,
		
		output wire [9 : 0] cfg_mgmt_addr,
		output wire [3 : 0] cfg_mgmt_byte_en,
		output wire cfg_mgmt_debug_access,
		output wire [7 : 0] cfg_mgmt_function_number,
		input wire [31 : 0] cfg_mgmt_read_data,
		output wire cfg_mgmt_read_en,
		input wire cfg_mgmt_read_write_done,
		output wire [31 : 0] cfg_mgmt_write_data,
		output wire cfg_mgmt_write_en,

        input wire cfg_ext_read_received,
        input wire cfg_ext_write_received,
        input wire [9 : 0] cfg_ext_register_number,
        input wire [7 : 0] cfg_ext_function_number,
        input wire [31 : 0] cfg_ext_write_data,
        input wire [3 : 0] cfg_ext_write_byte_enable,
        output wire [31 : 0] cfg_ext_read_data,
        output wire cfg_ext_read_data_valid,
		
		input wire up_aclk,
		input wire down_aclk,
		input wire up_aresetn,
		input wire down_aresetn
	);
	
	wire [1:0] m_axis_down_rq_tdest;
	wire [15:0] m_axis_down_rq_tkeep_temp;
	wire [15:0] cfg_rq_tkeep_down_domain_temp;
	
	wire [1:0] cfg_rq_tdest_down_domain;
	wire [TDATA_WIDTH-1:0] cfg_rq_tdata_down_domain;
	wire [TKEEP_WIDTH-1:0] cfg_rq_tkeep_down_domain;
	wire cfg_rq_tlast_down_domain;
	wire [RQ_TUSER_WIDTH-1:0] cfg_rq_tuser_down_domain;
	wire cfg_rq_tvalid_down_domain;
	wire cfg_rq_tready_down_domain;
	
	wire [TDATA_WIDTH-1:0] up_cc_tdata_down_domain;
	wire [TKEEP_WIDTH-1:0] up_cc_tkeep_down_domain;
	wire up_cc_tlast_down_domain;
	wire [CC_TUSER_WIDTH-1:0] up_cc_tuser_down_domain;
	wire up_cc_tvalid_down_domain;
	wire up_cc_tready_down_domain;
	
	wire [TDATA_WIDTH-1:0] cfg_cc_tdata_down_domain;
	wire [TKEEP_WIDTH-1:0] cfg_cc_tkeep_down_domain;
	wire cfg_cc_tlast_down_domain;
	wire [CC_TUSER_WIDTH-1:0] cfg_cc_tuser_down_domain;
	wire cfg_cc_tvalid_down_domain;
	wire cfg_cc_tready_down_domain;	
	
	// Add user logic here

    routing_table #(
		.TDATA_WIDTH(TDATA_WIDTH),
		.TKEEP_WIDTH(TKEEP_WIDTH),
        .RQ_TUSER_WIDTH(RQ_TUSER_WIDTH),
        .CQ_TUSER_WIDTH(CQ_TUSER_WIDTH)
    ) routing_table_inst (
        .s_axis_tdata(s_axis_up_cq_tdata),
        .s_axis_tkeep(s_axis_up_cq_tkeep),
        .s_axis_tlast(s_axis_up_cq_tlast),
        .s_axis_tuser(s_axis_up_cq_tuser),
        .s_axis_tvalid(s_axis_up_cq_tvalid),
        .s_axis_tready(s_axis_up_cq_tready),
        
        .m_axis_tdest(m_axis_down_rq_temp_tdest),  
        .m_axis_tdata(m_axis_down_rq_temp_tdata),
        .m_axis_tkeep(m_axis_down_rq_temp_tkeep),
        .m_axis_tlast(m_axis_down_rq_temp_tlast),
        .m_axis_tuser(m_axis_down_rq_temp_tuser),
        .m_axis_tvalid(m_axis_down_rq_temp_tvalid),
        .m_axis_tready(m_axis_down_rq_temp_tready),  
        
        .cfg_ext_read_received(cfg_ext_read_received),
        .cfg_ext_write_received(cfg_ext_write_received),
        .cfg_ext_register_number(cfg_ext_register_number),
        .cfg_ext_function_number(cfg_ext_function_number),
        .cfg_ext_write_data(cfg_ext_write_data),
        .cfg_ext_write_byte_enable(cfg_ext_write_byte_enable),
        .cfg_ext_read_data(cfg_ext_read_data),
        .cfg_ext_read_data_valid(cfg_ext_read_data_valid),
        
        .aclk(up_aclk),
        .aresetn(up_aresetn)
    );
    
    rc_to_cc #(
        .TDATA_WIDTH(TDATA_WIDTH),
        .TKEEP_WIDTH(TKEEP_WIDTH),
        .RC_TUSER_WIDTH(RC_TUSER_WIDTH),
        .CC_TUSER_WIDTH(CC_TUSER_WIDTH)
    ) rc_to_cc_inst (
        .s_axis_tdata(s_axis_down_rc_tdata),
        .s_axis_tkeep(s_axis_down_rc_tkeep),
        .s_axis_tlast(s_axis_down_rc_tlast),
        .s_axis_tuser(s_axis_down_rc_tuser),
        .s_axis_tvalid(s_axis_down_rc_tvalid),
        .s_axis_tready(s_axis_down_rc_tready),
        .m_axis_tdata(up_cc_tdata_down_domain),
        .m_axis_tkeep(up_cc_tkeep_down_domain),
        .m_axis_tlast(up_cc_tlast_down_domain),
        .m_axis_tuser(up_cc_tuser_down_domain),
        .m_axis_tvalid(up_cc_tvalid_down_domain),
        .m_axis_tready(up_cc_tready_down_domain)  
    );
    
    down_rq_to_down_rq_and_cfg_mgmt down_rq_to_down_rq_and_cfg_mgmt_inst (
        .aclk(down_aclk),
        .aresetn(down_aresetn),
        .s_axis_tvalid(s_axis_down_rq_temp_tvalid),
        .s_axis_tready(s_axis_down_rq_temp_tready),
        .s_axis_tdata(s_axis_down_rq_temp_tdata),
        .s_axis_tkeep(s_axis_down_rq_temp_tkeep),
        .s_axis_tlast(s_axis_down_rq_temp_tlast),
        .s_axis_tdest(s_axis_down_rq_temp_tdest),
        .s_axis_tuser(s_axis_down_rq_temp_tuser),
        .m_axis_tvalid({cfg_rq_tvalid_down_domain, m_axis_down_rq_tvalid}),
        .m_axis_tready({cfg_rq_tready_down_domain, m_axis_down_rq_tready}),
        .m_axis_tdata({cfg_rq_tdata_down_domain, m_axis_down_rq_tdata}),
        .m_axis_tkeep({cfg_rq_tkeep_down_domain_temp, m_axis_down_rq_tkeep_temp}),
        .m_axis_tlast({cfg_rq_tlast_down_domain, m_axis_down_rq_tlast}),
        .m_axis_tdest({cfg_rq_tdest_down_domain, m_axis_down_rq_tdest}),
        .m_axis_tuser({cfg_rq_tuser_down_domain, m_axis_down_rq_tuser}),
        .s_decode_err()
    );
    
    assign cfg_rq_tkeep_down_domain = cfg_rq_tkeep_down_domain_temp[3:0];
    assign m_axis_down_rq_tkeep = m_axis_down_rq_tkeep_temp[3:0];
    
    axis_to_cfg_mgmt #(
        .TDATA_WIDTH(TDATA_WIDTH),
        .TKEEP_WIDTH(TKEEP_WIDTH),
        .RQ_TUSER_WIDTH(RQ_TUSER_WIDTH),
        .CC_TUSER_WIDTH(CC_TUSER_WIDTH)		
    ) axis_to_cfg_mgmt_inst (
        .s_axis_tdest(cfg_rq_tdest_down_domain),  
        .s_axis_tdata(cfg_rq_tdata_down_domain),
        .s_axis_tkeep(cfg_rq_tkeep_down_domain),
        .s_axis_tlast(cfg_rq_tlast_down_domain),
        .s_axis_tuser(cfg_rq_tuser_down_domain),
        .s_axis_tvalid(cfg_rq_tvalid_down_domain),
        .s_axis_tready(cfg_rq_tready_down_domain),
        
        .m_axis_tdata(cfg_cc_tdata_down_domain),
        .m_axis_tkeep(cfg_cc_tkeep_down_domain),
        .m_axis_tlast(cfg_cc_tlast_down_domain),
        .m_axis_tuser(cfg_cc_tuser_down_domain),
        .m_axis_tvalid(cfg_cc_tvalid_down_domain),
        .m_axis_tready(cfg_cc_tready_down_domain),  
        
        .cfg_mgmt_addr(cfg_mgmt_addr),
        .cfg_mgmt_byte_en(cfg_mgmt_byte_en),
        .cfg_mgmt_debug_access(cfg_mgmt_debug_access),
        .cfg_mgmt_function_number(cfg_mgmt_function_number),  
        .cfg_mgmt_read_data(cfg_mgmt_read_data),
        .cfg_mgmt_read_en(cfg_mgmt_read_en),
        .cfg_mgmt_read_write_done(cfg_mgmt_read_write_done),
        .cfg_mgmt_write_data(cfg_mgmt_write_data),
        .cfg_mgmt_write_en(cfg_mgmt_write_en),
        
        .aclk(down_aclk),
        .aresetn(down_aresetn)
    );        

    down_rc_and_cfg_mgmt_to_up_cc down_rc_and_cfg_mgmt_to_up_cc_inst (
        .aclk(down_aclk),
        .aresetn(down_aresetn),
        .s_axis_tvalid({cfg_cc_tvalid_down_domain, up_cc_tvalid_down_domain}),
        .s_axis_tready({cfg_cc_tready_down_domain, up_cc_tready_down_domain}),
        .s_axis_tdata({cfg_cc_tdata_down_domain, up_cc_tdata_down_domain}),
        .s_axis_tkeep({12'h000, cfg_cc_tkeep_down_domain, 12'h000, up_cc_tkeep_down_domain}),
        .s_axis_tlast({cfg_cc_tlast_down_domain, up_cc_tlast_down_domain}),
        .s_axis_tuser({cfg_cc_tuser_down_domain, up_cc_tuser_down_domain}),
        .m_axis_tvalid(m_axis_up_cc_tvalid),
        .m_axis_tready(m_axis_up_cc_tready),
        .m_axis_tdata(m_axis_up_cc_tdata),
        .m_axis_tkeep(m_axis_up_cc_tkeep),
        .m_axis_tlast(m_axis_up_cc_tlast),
        .m_axis_tuser(m_axis_up_cc_tuser),
        .s_req_suppress(),
        .s_decode_err()
    );
    
    cq_to_rq # (
        .TDATA_WIDTH(TDATA_WIDTH),
        .TKEEP_WIDTH(TKEEP_WIDTH),
        .RQ_TUSER_WIDTH(RQ_TUSER_WIDTH),
        .CQ_TUSER_WIDTH(CQ_TUSER_WIDTH)
    ) cq_to_rq_inst (
        .s_axis_tdata(s_axis_down_cq_tdata), 
        .s_axis_tkeep(s_axis_down_cq_tkeep), 
        .s_axis_tlast(s_axis_down_cq_tlast), 
        .s_axis_tuser(s_axis_down_cq_tuser), 
        .s_axis_tvalid(s_axis_down_cq_tvalid),
        .s_axis_tready(s_axis_down_cq_tready),
        
        .m_axis_tdata(m_axis_up_rq_tdata), 
        .m_axis_tkeep(m_axis_up_rq_tkeep), 
        .m_axis_tlast(m_axis_up_rq_tlast), 
        .m_axis_tuser(m_axis_up_rq_tuser), 
        .m_axis_tvalid(m_axis_up_rq_tvalid),
        .m_axis_tready(m_axis_up_rq_tready) 
    );
    
    rc_to_cc #(
        .TDATA_WIDTH(TDATA_WIDTH),
        .TKEEP_WIDTH(TKEEP_WIDTH),
        .RC_TUSER_WIDTH(RC_TUSER_WIDTH),
        .CC_TUSER_WIDTH(CC_TUSER_WIDTH)
    ) rc_to_cc_inst_2 (
        .s_axis_tdata(s_axis_up_rc_tdata),
        .s_axis_tkeep(s_axis_up_rc_tkeep),
        .s_axis_tlast(s_axis_up_rc_tlast),
        .s_axis_tuser(s_axis_up_rc_tuser),
        .s_axis_tvalid(s_axis_up_rc_tvalid),
        .s_axis_tready(s_axis_up_rc_tready),
        .m_axis_tdata(m_axis_down_cc_tdata),
        .m_axis_tkeep(m_axis_down_cc_tkeep),
        .m_axis_tlast(m_axis_down_cc_tlast),
        .m_axis_tuser(m_axis_down_cc_tuser),
        .m_axis_tvalid(m_axis_down_cc_tvalid),
        .m_axis_tready(m_axis_down_cc_tready)  
    );
	// User logic ends

	endmodule
