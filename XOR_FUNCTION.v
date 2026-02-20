`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 03:47:21 PM
// Design Name: 
// Module Name: XOR_FUNCTION
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


module XOR_FUNCTION(F_K,L0, Out);
      input [31:0] F_K, L0; 
      output [31:0] Out; 
 assign Out = F_K ^ L0; 
endmodule
