`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 05:09:30 PM
// Design Name: 
// Module Name: REGISTER_C0_D0
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


module REGISTER_C0_D0(C0,Clk,Reset, D0,C0_out,D0_out);

      input [27:0] C0, D0; 
      input Clk; 
      input Reset; 
      output reg [27:0] C0_out; 
      output reg [27:0] D0_out;                           // 
      
      reg [55:0]Reg_temp ;                               // DOC TAI CANH LEN 
      always @(posedge Clk, posedge Reset) 
      begin
        if(Reset) 
          begin
          C0_out <=28'b0; 
          D0_out <= 28'b0; 
          end    
        else 
        begin  
           C0_out <= Reg_temp[55:28]; 
           D0_out <= Reg_temp[27:0]; 
        end  
      end
      
      always @(negedge Clk, posedge Reset)                          // GHI TAI CANH XUONG 
      begin 
      if(Reset) 
        Reg_temp <=0; 
      else 
      begin 
         Reg_temp[55:28] <= C0; 
         Reg_temp[27:0] <= D0; 
      end   
      end 
endmodule
