`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UIUC
// Engineer: David Min
// 
// Create Date: 04/06/2021 07:34:40 PM
// Design Name: 
// Module Name: axis_to_cfg_mgmt
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


module axis_to_cfg_mgmt #(
		parameter integer TDATA_WIDTH	= 128,
		
		parameter integer TKEEP_WIDTH   = 4,
		
        parameter integer RQ_TUSER_WIDTH = 85,
        parameter integer CC_TUSER_WIDTH = 33		
    ) (
    input wire [1:0] s_axis_tdest,  
    input wire [TDATA_WIDTH-1 : 0] s_axis_tdata,
    input wire [TKEEP_WIDTH-1 : 0] s_axis_tkeep,
    input wire s_axis_tlast,
    input wire [RQ_TUSER_WIDTH-1 : 0] s_axis_tuser,
    input wire s_axis_tvalid,
    output reg s_axis_tready,
    
    output reg [TDATA_WIDTH-1 : 0] m_axis_tdata,
    output reg [TKEEP_WIDTH-1 : 0] m_axis_tkeep,
    output reg m_axis_tlast,
    output reg [CC_TUSER_WIDTH-1 : 0] m_axis_tuser,
    output reg m_axis_tvalid,
    input wire m_axis_tready,  
    
    output reg [9:0] cfg_mgmt_addr,
    output reg [3:0] cfg_mgmt_byte_en,
    output reg cfg_mgmt_debug_access,
    output reg [7:0] cfg_mgmt_function_number,  
    input wire [31:0] cfg_mgmt_read_data,
    output reg cfg_mgmt_read_en,
    input wire cfg_mgmt_read_write_done,
    output reg [31:0] cfg_mgmt_write_data,
    output reg cfg_mgmt_write_en,
    
    //  additional ports here
    input wire aclk,
    input wire aresetn
    );
    
//  user logic here
localparam IDLE = 4'b0000;
localparam READ_CFG = 4'b0001;
localparam READ_RESP = 4'b0010;
localparam WRITE_CFG_HEADER = 4'b0011;
localparam WRITE_CFG_DATA = 4'b0100;
localparam WRITE_RESP = 4'b0101;
localparam READ_RESP_ERROR = 4'b0110;
localparam WRITE_CFG_HEADER_ERROR = 4'b0111;
localparam WRITE_RESP_ERROR = 4'b1000;
reg [3:0] state;

reg [TDATA_WIDTH-1 : 0] m_axis_tdata_reg;
reg [TKEEP_WIDTH-1 : 0] m_axis_keep_reg;
reg m_axis_last_reg;
reg [CC_TUSER_WIDTH-1 : 0] m_axis_tuser_reg;
reg m_axis_valid_reg;

reg [9:0] cfg_mgmt_addr_reg;
reg [3:0] cfg_mgmt_byte_en_reg;
reg cfg_mgmt_debug_access_reg;
reg [7:0] cfg_mgmt_function_number_reg;
reg cfg_mgmt_read_en_reg;
reg [31:0] cfg_mgmt_write_data_reg;
reg cfg_mgmt_write_en_reg;
reg [31:0] cfg_mgmt_read_data_reg;

wire [6:0] lower_address;
reg [1:0] address_type_reg;
wire [12:0] byte_count;
wire locked_read_completion; // 1'b0
reg [10:0] dword_count_reg; // 11'h1
reg [2:0] completion_status_reg; // 3'b000
wire poisoned_completion; // 1'b0
reg [15:0] requester_id_reg;
reg [7:0] tag_reg;
reg [15:0] completer_id_reg;
wire completer_id_enable; // 1'b1
reg [2:0] transaction_class_reg;
reg [2:0] attributes_reg;
wire force_ecrc; // 1'b0

wire [95:0] cc_header;

assign byte_count = 13'h0004;
assign locked_read_completion = 1'b0;
assign poisoned_completion = 1'b0;
assign completer_id_enable = 1'b1;
assign force_ecrc = 1'b0;

assign cc_header = {force_ecrc,
                    attributes_reg,
                    transaction_class_reg,
                    completer_id_enable,
                    completer_id_reg,
                    tag_reg,
                    requester_id_reg,
                    1'b0,
                    poisoned_completion,
                    completion_status_reg,
                    dword_count_reg,
                    2'b00,
                    locked_read_completion,
                    byte_count,
                    6'b000000,
                    address_type_reg,
                    1'b0,
                    lower_address};

always @(state, cfg_mgmt_addr_reg, cfg_mgmt_function_number_reg, cfg_mgmt_byte_en_reg, cfg_mgmt_read_data_reg, cc_header, cfg_mgmt_write_data_reg) begin
    case (state)
        IDLE: begin
            s_axis_tready = 1'b1;
            
            m_axis_tdata = 128'h0000_0000_0000_0000_0000_0000_0000_0000;
            m_axis_tkeep = 4'b0000;
            m_axis_tlast = 1'b0;
            m_axis_tuser = 33'h0_0000_0000;
            m_axis_tvalid = 1'b0;
            
            cfg_mgmt_addr = 10'h000;
            cfg_mgmt_byte_en = 4'b0000;
            cfg_mgmt_debug_access = 1'b0;
            cfg_mgmt_function_number = 8'h00;
            cfg_mgmt_read_en = 1'b0;
            cfg_mgmt_write_data = 32'h0000_0000;
            cfg_mgmt_write_en = 1'b0;           
        end
        READ_CFG: begin
            s_axis_tready = 1'b0;
            
            m_axis_tdata = 128'h0000_0000_0000_0000_0000_0000_0000_0000;
            m_axis_tkeep = 4'b0000;
            m_axis_tlast = 1'b0;
            m_axis_tuser = 33'h0_0000_0000;
            m_axis_tvalid = 1'b0;
            
            cfg_mgmt_addr = cfg_mgmt_addr_reg;
            cfg_mgmt_byte_en = 4'b0000;
            cfg_mgmt_debug_access = 1'b0;
            cfg_mgmt_function_number = cfg_mgmt_function_number_reg;
            cfg_mgmt_read_en = 1'b1;
            cfg_mgmt_write_data = 32'h0000_0000;
            cfg_mgmt_write_en = 1'b0;           
        end
        READ_RESP: begin
            s_axis_tready = 1'b0;
            
            m_axis_tdata = {cfg_mgmt_read_data_reg, cc_header};
            m_axis_tkeep = 4'b1111;
            m_axis_tlast = 1'b1;
            m_axis_tuser = 33'h0_0000_0000;
            m_axis_tvalid = 1'b1;
            
            cfg_mgmt_addr = 10'h000;
            cfg_mgmt_byte_en = 4'b0000;
            cfg_mgmt_debug_access = 1'b0;
            cfg_mgmt_function_number = 8'h00;
            cfg_mgmt_read_en = 1'b0;
            cfg_mgmt_write_data = 32'h0000_0000;
            cfg_mgmt_write_en = 1'b0;
        end
        WRITE_CFG_HEADER: begin
            s_axis_tready = 1'b1;
            
            m_axis_tdata = 128'h0000_0000_0000_0000_0000_0000_0000_0000;
            m_axis_tkeep = 4'b0000;
            m_axis_tlast = 1'b0;
            m_axis_tuser = 33'h0_0000_0000;
            m_axis_tvalid = 1'b0;
            
            cfg_mgmt_addr = 10'h000;
            cfg_mgmt_byte_en = 4'b0000;
            cfg_mgmt_debug_access = 1'b0;
            cfg_mgmt_function_number = 8'h00;
            cfg_mgmt_read_en = 1'b0;
            cfg_mgmt_write_data = 32'h0000_0000;
            cfg_mgmt_write_en = 1'b0;
        end
        WRITE_CFG_DATA: begin
            s_axis_tready = 1'b0;
            
            m_axis_tdata = 128'h0000_0000_0000_0000_0000_0000_0000_0000;
            m_axis_tkeep = 4'b0000;
            m_axis_tlast = 1'b0;
            m_axis_tuser = 33'h0_0000_0000;
            m_axis_tvalid = 1'b0;
                    
            cfg_mgmt_addr = cfg_mgmt_addr_reg;
            cfg_mgmt_byte_en = cfg_mgmt_byte_en_reg;
            cfg_mgmt_debug_access = 1'b0;
            cfg_mgmt_function_number = cfg_mgmt_function_number_reg;
            cfg_mgmt_read_en = 1'b0;
            cfg_mgmt_write_data = cfg_mgmt_write_data_reg;
            cfg_mgmt_write_en = 1'b1;
        end        
        WRITE_RESP: begin
            s_axis_tready = 1'b0;
            
            m_axis_tdata = {32'h0000_0000, cc_header};
            m_axis_tkeep = 4'b0111;
            m_axis_tlast = 1'b1;
            m_axis_tuser = 33'h0_0000_0000;
            m_axis_tvalid = 1'b1;
                    
            cfg_mgmt_addr = 10'h000;
            cfg_mgmt_byte_en = 4'b0000;
            cfg_mgmt_debug_access = 1'b0;
            cfg_mgmt_function_number = 8'h00;
            cfg_mgmt_read_en = 1'b0;
            cfg_mgmt_write_data = 32'h0000_0000;
            cfg_mgmt_write_en = 1'b0;
        end
        READ_RESP_ERROR: begin
            s_axis_tready = 1'b0;
            
            m_axis_tdata = {32'h0000_0000, cc_header};
            m_axis_tkeep = 4'b1111;
            m_axis_tlast = 1'b1;
            m_axis_tuser = 33'h0_0000_0000;
            m_axis_tvalid = 1'b1;
            
            cfg_mgmt_addr = 10'h000;
            cfg_mgmt_byte_en = 4'b0000;
            cfg_mgmt_debug_access = 1'b0;
            cfg_mgmt_function_number = 8'h00;
            cfg_mgmt_read_en = 1'b0;
            cfg_mgmt_write_data = 32'h0000_0000;
            cfg_mgmt_write_en = 1'b0;    
        end
        WRITE_CFG_HEADER_ERROR: begin
            s_axis_tready = 1'b1;
            
            m_axis_tdata = 128'h0000_0000_0000_0000_0000_0000_0000_0000;
            m_axis_tkeep = 4'b0000;
            m_axis_tlast = 1'b0;
            m_axis_tuser = 33'h0_0000_0000;
            m_axis_tvalid = 1'b0;
            
            cfg_mgmt_addr = 10'h000;
            cfg_mgmt_byte_en = 4'b0000;
            cfg_mgmt_debug_access = 1'b0;
            cfg_mgmt_function_number = 8'h00;
            cfg_mgmt_read_en = 1'b0;
            cfg_mgmt_write_data = 32'h0000_0000;
            cfg_mgmt_write_en = 1'b0;    
        end
        WRITE_RESP_ERROR: begin
            s_axis_tready = 1'b0;
            
            m_axis_tdata = {32'h0000_0000, cc_header};
            m_axis_tkeep = 4'b0111;
            m_axis_tlast = 1'b1;
            m_axis_tuser = 33'h0_0000_0000;
            m_axis_tvalid = 1'b1;
                    
            cfg_mgmt_addr = 10'h000;
            cfg_mgmt_byte_en = 4'b0000;
            cfg_mgmt_debug_access = 1'b0;
            cfg_mgmt_function_number = 8'h00;
            cfg_mgmt_read_en = 1'b0;
            cfg_mgmt_write_data = 32'h0000_0000;
            cfg_mgmt_write_en = 1'b0;    
        end        
        default: begin
            s_axis_tready = 1'b0;
            
            m_axis_tdata = 128'h0000_0000_0000_0000_0000_0000_0000_0000;
            m_axis_tkeep = 4'b0000;
            m_axis_tlast = 1'b0;
            m_axis_tuser = 33'h0_0000_0000;
            m_axis_tvalid = 1'b0;
            
            cfg_mgmt_addr = 10'h000;
            cfg_mgmt_byte_en = 4'b0000;
            cfg_mgmt_debug_access = 1'b0;
            cfg_mgmt_function_number = 8'h00;
            cfg_mgmt_read_en = 1'b0;
            cfg_mgmt_write_data = 32'h0000_0000;
            cfg_mgmt_write_en = 1'b0;           
        end
    endcase
end

always @(posedge aclk)
    if (!aresetn) begin
        state <= IDLE;
        cfg_mgmt_addr_reg <= 10'h000;
        cfg_mgmt_byte_en_reg <= 4'b0000;
        cfg_mgmt_function_number_reg <= 8'h00;
        cfg_mgmt_read_data_reg <= 32'h0000;
        cfg_mgmt_write_data_reg <= 32'h0000;        
        
        requester_id_reg <= 16'h0000;
        completer_id_reg <= 16'h0000;
        tag_reg <= 8'h00;
        address_type_reg <= 2'b00;
        transaction_class_reg <= 3'b000;
        attributes_reg <= 3'b000;
        dword_count_reg <= 11'h000;
        completion_status_reg <= 3'b000;
    end
else
    case (state)
        IDLE : begin
            if (s_axis_tvalid)
                if (s_axis_tdest[0]) begin
                    if (s_axis_tdata[78:75] == 4'b1000) begin
                        state <= READ_RESP_ERROR;
                        dword_count_reg <= 11'h000;
                    end
                    else begin
                        state <= WRITE_CFG_HEADER_ERROR;
                        dword_count_reg <= 11'h000;
                    end
                    completion_status_reg <= 3'b001;
                    completer_id_reg <= 8'h00;
                end
                else begin
                    if (s_axis_tdata[78:75] == 4'b1000) begin
                        state <= READ_CFG;
                        dword_count_reg <= s_axis_tdata[74:64];
                    end
                    else begin
                        state <= WRITE_CFG_HEADER;
                        dword_count_reg <= 11'h000;
                    end
                    completion_status_reg <= 3'b000;
                    completer_id_reg <= s_axis_tdata[119:104];                    
                end
            else begin
                state <= IDLE;
                dword_count_reg <= s_axis_tdata[74:64];
                completion_status_reg <= 3'b000;
                completer_id_reg <= s_axis_tdata[119:104];                
            end
                
            cfg_mgmt_addr_reg <= s_axis_tdata[11:2];
            cfg_mgmt_byte_en_reg <= 4'b0000;
            cfg_mgmt_function_number_reg <= s_axis_tdata[111:104];
            cfg_mgmt_read_data_reg <= 32'h0000;
            cfg_mgmt_write_data_reg <= 32'h0000;            
            
            requester_id_reg <= s_axis_tdata[95:80];
            tag_reg <= s_axis_tdata[103:96];
            address_type_reg <= s_axis_tdata[1:0];
            transaction_class_reg <= s_axis_tdata[123:121];
            attributes_reg <= s_axis_tdata[126:124];
            //dword_count_reg <= s_axis_tdata[74:64];             
        end
        READ_CFG : begin
            if (cfg_mgmt_read_write_done)
                state <= READ_RESP;
            else
                state <= READ_CFG;
                
            cfg_mgmt_addr_reg <= cfg_mgmt_addr_reg;
            cfg_mgmt_byte_en_reg <= cfg_mgmt_byte_en_reg;            
            cfg_mgmt_function_number_reg <= cfg_mgmt_function_number_reg;
            cfg_mgmt_read_data_reg <= cfg_mgmt_read_data;
            cfg_mgmt_write_data_reg <= cfg_mgmt_write_data_reg;            
            
            requester_id_reg <= requester_id_reg;
            completer_id_reg <= completer_id_reg;
            tag_reg <= tag_reg;
            address_type_reg <= address_type_reg;
            transaction_class_reg <= transaction_class_reg;
            attributes_reg <= attributes_reg;
            dword_count_reg <= dword_count_reg;
            completion_status_reg <= completion_status_reg;
        end
        READ_RESP : begin
            if (m_axis_tready)
                state <= IDLE;
            else
                state <= READ_RESP;

            cfg_mgmt_addr_reg <= cfg_mgmt_addr_reg;
            cfg_mgmt_byte_en_reg <= cfg_mgmt_byte_en_reg;
            cfg_mgmt_function_number_reg <= cfg_mgmt_function_number_reg;
            cfg_mgmt_read_data_reg <= cfg_mgmt_read_data_reg;
            cfg_mgmt_write_data_reg <= cfg_mgmt_write_data_reg;            
            
            requester_id_reg <= requester_id_reg;
            completer_id_reg <= completer_id_reg;
            tag_reg <= tag_reg;
            address_type_reg <= address_type_reg;
            transaction_class_reg <= transaction_class_reg;
            attributes_reg <= attributes_reg;
            dword_count_reg <= dword_count_reg;
            completion_status_reg <= completion_status_reg;
        end
        WRITE_CFG_HEADER : begin
            if (s_axis_tvalid)
                state <= WRITE_CFG_DATA;
            else
                state <= WRITE_CFG_HEADER;

            cfg_mgmt_addr_reg <= cfg_mgmt_addr_reg;
            cfg_mgmt_byte_en_reg <= s_axis_tuser[3:0];
            cfg_mgmt_function_number_reg <= cfg_mgmt_function_number_reg;
            cfg_mgmt_read_data_reg <= cfg_mgmt_read_data_reg;
            cfg_mgmt_write_data_reg <= s_axis_tdata[31:0];
                
            requester_id_reg <= requester_id_reg;
            completer_id_reg <= completer_id_reg;
            tag_reg <= tag_reg;
            address_type_reg <= address_type_reg;
            transaction_class_reg <= transaction_class_reg;
            attributes_reg <= attributes_reg;
            dword_count_reg <= dword_count_reg;
            completion_status_reg <= completion_status_reg;
        end
        WRITE_CFG_DATA : begin
            if (cfg_mgmt_read_write_done)
                state <= WRITE_RESP;
            else
                state <= WRITE_CFG_DATA;
                
            cfg_mgmt_addr_reg <= cfg_mgmt_addr_reg;
            cfg_mgmt_byte_en_reg <= cfg_mgmt_byte_en_reg;
            cfg_mgmt_function_number_reg <= cfg_mgmt_function_number_reg;
            cfg_mgmt_read_data_reg <= cfg_mgmt_read_data_reg;
            cfg_mgmt_write_data_reg <= cfg_mgmt_write_data_reg;
                
            requester_id_reg <= requester_id_reg;
            completer_id_reg <= completer_id_reg;
            tag_reg <= tag_reg;
            address_type_reg <= address_type_reg;
            transaction_class_reg <= transaction_class_reg;
            attributes_reg <= attributes_reg;
            dword_count_reg <= dword_count_reg;
            completion_status_reg <= completion_status_reg;
        end        
        WRITE_RESP: begin
            if (m_axis_tready)
                state <= IDLE;
            else
                state <= WRITE_RESP;
                
            cfg_mgmt_addr_reg <= cfg_mgmt_addr_reg;
            cfg_mgmt_byte_en_reg <= cfg_mgmt_byte_en_reg;
            cfg_mgmt_function_number_reg <= cfg_mgmt_function_number_reg;
            cfg_mgmt_read_data_reg <= cfg_mgmt_read_data_reg;
            cfg_mgmt_write_data_reg <= cfg_mgmt_write_data_reg;                              
                
            requester_id_reg <= requester_id_reg;
            completer_id_reg <= completer_id_reg;
            tag_reg <= tag_reg;
            address_type_reg <= address_type_reg;
            transaction_class_reg <= transaction_class_reg;
            attributes_reg <= attributes_reg;
            dword_count_reg <= dword_count_reg;
            completion_status_reg <= completion_status_reg;
        end
        READ_RESP_ERROR : begin
            if (m_axis_tready)
                state <= IDLE;
            else
                state <= READ_RESP_ERROR;

            cfg_mgmt_addr_reg <= cfg_mgmt_addr_reg;
            cfg_mgmt_byte_en_reg <= cfg_mgmt_byte_en_reg;
            cfg_mgmt_function_number_reg <= cfg_mgmt_function_number_reg;
            cfg_mgmt_read_data_reg <= cfg_mgmt_read_data_reg;
            cfg_mgmt_write_data_reg <= cfg_mgmt_write_data_reg;            
            
            requester_id_reg <= requester_id_reg;
            completer_id_reg <= completer_id_reg;
            tag_reg <= tag_reg;
            address_type_reg <= address_type_reg;
            transaction_class_reg <= transaction_class_reg;
            attributes_reg <= attributes_reg;
            dword_count_reg <= dword_count_reg;
            completion_status_reg <= completion_status_reg;
        end
        WRITE_CFG_HEADER_ERROR : begin
            if (s_axis_tvalid)
                state <= WRITE_RESP_ERROR;
            else
                state <= WRITE_CFG_HEADER_ERROR;

            cfg_mgmt_addr_reg <= cfg_mgmt_addr_reg;
            cfg_mgmt_byte_en_reg <= cfg_mgmt_byte_en_reg;
            cfg_mgmt_function_number_reg <= cfg_mgmt_function_number_reg;
            cfg_mgmt_read_data_reg <= cfg_mgmt_read_data_reg;
            cfg_mgmt_write_data_reg <= cfg_mgmt_write_data_reg;
                
            requester_id_reg <= requester_id_reg;
            completer_id_reg <= completer_id_reg;
            tag_reg <= tag_reg;
            address_type_reg <= address_type_reg;
            transaction_class_reg <= transaction_class_reg;
            attributes_reg <= attributes_reg;
            dword_count_reg <= dword_count_reg;
            completion_status_reg <= completion_status_reg;
        end  
        WRITE_RESP_ERROR: begin
            if (m_axis_tready)
                state <= IDLE;
            else
                state <= WRITE_RESP_ERROR;
                
            cfg_mgmt_addr_reg <= cfg_mgmt_addr_reg;
            cfg_mgmt_byte_en_reg <= cfg_mgmt_byte_en_reg;
            cfg_mgmt_function_number_reg <= cfg_mgmt_function_number_reg;
            cfg_mgmt_read_data_reg <= cfg_mgmt_read_data_reg;
            cfg_mgmt_write_data_reg <= cfg_mgmt_write_data_reg;                              
                
            requester_id_reg <= requester_id_reg;
            completer_id_reg <= completer_id_reg;
            tag_reg <= tag_reg;
            address_type_reg <= address_type_reg;
            transaction_class_reg <= transaction_class_reg;
            attributes_reg <= attributes_reg;
            dword_count_reg <= dword_count_reg;
            completion_status_reg <= completion_status_reg;
        end        
        default: begin
            state <= IDLE;
            cfg_mgmt_addr_reg <= 10'h000;
            cfg_mgmt_byte_en_reg <= 4'b0000;
            cfg_mgmt_function_number_reg <= 8'h00;
            cfg_mgmt_read_data_reg <= 32'h0000;
            cfg_mgmt_write_data_reg <= 32'h0000;        
            
            requester_id_reg <= 16'h0000;
            completer_id_reg <= 16'h0000;
            tag_reg <= 8'h00;
            address_type_reg <= 2'b00;
            transaction_class_reg <= 3'b000;
            attributes_reg <= 3'b000;
            dword_count_reg <= 11'h000;
            completion_status_reg <= 3'b000;
        end
    endcase
    
endmodule
