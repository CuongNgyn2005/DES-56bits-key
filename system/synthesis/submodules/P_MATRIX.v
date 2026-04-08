`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 10:47:27 AM
// Design Name: 
// Module Name: P_MATRIX
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


module P_MATRIX(P_in, P_out);
     input [31:0] P_in; 
     output [31:0] P_out; 
 assign P_out = {P_in[16], P_in[25], P_in[12], P_in[11],
  P_in[3], P_in[20], P_in[4], P_in[15],
  P_in[31], P_in[17], P_in[9], P_in[6],
  P_in[27], P_in[14], P_in[1], P_in[22],
  P_in[30], P_in[24], P_in[8], P_in[18],
  P_in[0], P_in[5], P_in[29], P_in[23],
  P_in[13], P_in[19], P_in[2], P_in[26],
  P_in[10], P_in[21], P_in[28], P_in[7]};  
endmodule
