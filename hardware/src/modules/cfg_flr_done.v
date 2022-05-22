`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2021 02:03:45 PM
// Design Name: 
// Module Name: cfg_flr_done
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


module cfg_flr_done(
    input user_clk,
    input user_reset,
    input [3:0] cfg_flr_in_process,
    output [3:0] cfg_flr_done
    );
    
reg [3:0] cfg_flr_done_reg0;
reg [3:0] cfg_flr_done_reg1;    

always @(posedge user_clk)
  begin
   if (user_reset) begin
      cfg_flr_done_reg0       <= 4'b0;
      cfg_flr_done_reg1       <= 4'b0;
    end
   else begin
      cfg_flr_done_reg0       <= cfg_flr_in_process;
      cfg_flr_done_reg1       <= cfg_flr_done_reg0;
   end
  end

assign cfg_flr_done[0] = ~cfg_flr_done_reg1[0] && cfg_flr_done_reg0[0]; 
assign cfg_flr_done[1] = ~cfg_flr_done_reg1[1] && cfg_flr_done_reg0[1]; 
assign cfg_flr_done[2] = ~cfg_flr_done_reg1[2] && cfg_flr_done_reg0[2]; 
assign cfg_flr_done[3] = ~cfg_flr_done_reg1[3] && cfg_flr_done_reg0[3];    
    
endmodule
