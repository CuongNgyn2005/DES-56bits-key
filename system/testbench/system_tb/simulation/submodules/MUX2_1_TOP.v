`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 03:59:58 PM
// Design Name: 
// Module Name: MUX2_1_TOP
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


module MUX2_1_TOP(In_a,Select, In_b, Out);
    input [31:0] In_a; 
     input [31:0] In_b; 
     output [31:0] Out; 
     input Select; 
 assign Out = (Select == 1'b1) ? In_a : In_b; 
 
endmodule
