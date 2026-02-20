`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 05:02:23 PM
// Design Name: 
// Module Name: SHIFT_LEFT_1
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


module SHIFT_LEFT_1(C_in, C_out);

     input [27:0] C_in;    //             32 bit key vao 
     output [27:0] C_out ; //              32 bit sau khi dich 
     
  assign C_out = {C_in[26:0], C_in[27]}; // 
endmodule 
