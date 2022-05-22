`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UIUC
// Engineer: David Min
// 
// Create Date: 04/06/2021 07:41:26 PM
// Design Name: 
// Module Name: routing_table
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


module routing_table #(
		parameter integer TDATA_WIDTH	= 128,
		
		parameter integer TKEEP_WIDTH   = 4,
        parameter integer RQ_TUSER_WIDTH = 85,
        parameter integer CQ_TUSER_WIDTH = 108		
    ) (
    input wire [TDATA_WIDTH-1 : 0] s_axis_tdata,
    input wire [TKEEP_WIDTH-1 : 0] s_axis_tkeep,
    input wire s_axis_tlast,
    input wire [CQ_TUSER_WIDTH-1 : 0] s_axis_tuser,
    input wire s_axis_tvalid,
    output wire s_axis_tready,
    
    output wire [1:0] m_axis_tdest,  
    output wire [TDATA_WIDTH-1 : 0] m_axis_tdata,
    output wire [TKEEP_WIDTH-1 : 0] m_axis_tkeep,
    output wire m_axis_tlast,
    output wire [RQ_TUSER_WIDTH-1 : 0] m_axis_tuser,
    output wire m_axis_tvalid,
    input wire m_axis_tready,  
    
    input wire cfg_ext_read_received,
    input wire cfg_ext_write_received,
    input wire [9:0] cfg_ext_register_number,
    input wire [7:0] cfg_ext_function_number,
    input wire [31:0] cfg_ext_write_data,
    input wire [3:0] cfg_ext_write_byte_enable,
    output wire [31:0] cfg_ext_read_data,
    output wire cfg_ext_read_data_valid,
    //  additional ports here
    input aclk,
    input aresetn
    );
    
assign cfg_ext_read_data = 32'h0000_0000;
assign cfg_ext_read_data_valid = 1'b1;

reg [7:0] subordinate_bus_number_up;
reg [7:0] secondary_bus_number_up;
reg [7:0] primary_bus_number_up;
reg cfg_write;
reg disable_io;

wire [3:0] request_type;
wire [7:0] bus_number; 

always @(posedge aclk) begin
    if (~aresetn) begin
        subordinate_bus_number_up <= 8'b00000000;
        secondary_bus_number_up <= 8'b00000000;
        primary_bus_number_up <= 8'b00000000;
    end
    else begin
        if (cfg_ext_write_received) begin
            if (cfg_ext_register_number == 10'b110) begin
                if (cfg_ext_write_byte_enable[0])
                    primary_bus_number_up <= cfg_ext_write_data[7:0];
                if (cfg_ext_write_byte_enable[1])
                    secondary_bus_number_up <= cfg_ext_write_data[15:8];
                if (cfg_ext_write_byte_enable[2])
                    subordinate_bus_number_up <= cfg_ext_write_data[23:16];
            end
        end
    end
end

always @(posedge aclk) begin
    if (~aresetn) begin
        cfg_write <= 1'b0;
        disable_io <= 1'b0;
    end
    else begin
        if (s_axis_tuser[40]) begin
            if (bus_number == secondary_bus_number_up || ((bus_number == (secondary_bus_number_up + 1'b1) && s_axis_tdata[111:107]))) begin
                cfg_write <= 1'b1;
                
                if (request_type == 4'b1011 && s_axis_tdata[11:0] == 12'h004) begin
                    disable_io <= 1'b1;
                end
                else begin
                    disable_io <= 1'b0;
                end
            end
            else begin
                cfg_write <= 1'b0;
                disable_io <= 1'b0;
            end
        end
    end
end

assign request_type = s_axis_tdata[78:75];
assign bus_number = s_axis_tdata[119:112];

assign m_axis_tdata = {s_axis_tdata[127:121],
                      s_axis_tuser[40] ? 1'b1 : s_axis_tdata[120],
                      s_axis_tdata[119:76],
                      (s_axis_tuser[40] &&
                      bus_number >= secondary_bus_number_up &&
                      bus_number <= subordinate_bus_number_up &&
                      (request_type == 4'b1001 || request_type == 4'b1011)) ? 1'b0 : s_axis_tdata[75],
                      s_axis_tdata[74:1],
                      (~s_axis_tuser[40] && disable_io) ? 1'b0 : s_axis_tdata[0]};

assign m_axis_tdest[0] = ((bus_number == (secondary_bus_number_up + 1'b1) && s_axis_tuser[40] && s_axis_tdata[111:107]) || (~s_axis_tuser[40] && cfg_write)) ? 1'b1 : 1'b0;
assign m_axis_tdest[1] = ((bus_number == secondary_bus_number_up && s_axis_tuser[40]) || (~s_axis_tuser[40] && cfg_write)) ? 1'b1 : 1'b0;          

assign m_axis_tvalid = s_axis_tvalid;
assign s_axis_tready = m_axis_tready;
assign m_axis_tkeep = s_axis_tkeep;
assign m_axis_tuser = {s_axis_tuser[107], s_axis_tuser[106], s_axis_tuser[105:86], s_axis_tuser[85], s_axis_tuser[84:53], 4'b0000, 12'h000, s_axis_tuser[41], 3'b000, s_axis_tuser[7:4], s_axis_tuser[3:0]};
assign m_axis_tlast = s_axis_tlast;

endmodule
