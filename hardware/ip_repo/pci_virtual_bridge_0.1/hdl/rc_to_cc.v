`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UIUC
// Engineer: David Min
// 
// Create Date: 04/06/2021 07:26:56 PM
// Design Name: 
// Module Name: rc_to_cc
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


module rc_to_cc	#(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface s_axis_up_rc
		parameter integer TDATA_WIDTH	= 128,
		
		parameter integer TKEEP_WIDTH   = 4,
		
        parameter integer RC_TUSER_WIDTH = 75,
        parameter integer CC_TUSER_WIDTH = 33
	) (
    input wire [TDATA_WIDTH-1 : 0] s_axis_tdata, // Transfer Data (optional)
    input wire [TKEEP_WIDTH-1 : 0] s_axis_tkeep, // Transfer Null Byte Indicators (optional)
    input wire s_axis_tlast, // Packet Boundary Indicator (optional)
    input wire [RC_TUSER_WIDTH-1 : 0] s_axis_tuser, // Transfer user sideband (optional)
    input wire s_axis_tvalid, // Transfer valid (required)
    output wire s_axis_tready, // Transfer ready (optional)
    
    output wire [TDATA_WIDTH-1 : 0] m_axis_tdata, // Transfer Data (optional)
    output wire [TKEEP_WIDTH-1 : 0] m_axis_tkeep, // Transfer Null Byte Indicators (optional)
    output wire m_axis_tlast, // Packet Boundary Indicator (optional)
    output wire [CC_TUSER_WIDTH-1 : 0] m_axis_tuser, // Transfer user sideband (optional)
    output wire m_axis_tvalid, // Transfer valid (required)
    input wire m_axis_tready // Transfer ready (optional)  
    );
    
    assign m_axis_tdata = {s_axis_tdata[127:89],
                          s_axis_tuser[32] ? 1'b1 : s_axis_tdata[88],
                          s_axis_tdata[87:0]};
    
    assign m_axis_tvalid = s_axis_tvalid;
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tkeep = s_axis_tkeep;
    assign m_axis_tuser = {s_axis_tuser[74:43], s_axis_tuser[42]};
    assign m_axis_tlast = s_axis_tlast;    
endmodule
