`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 08:18:11 PM
// Design Name: 
// Module Name: MUX2_1
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


module MUX2_1(In_a,Select, In_b, Out);
     input [27:0] In_a; 
     input [27:0] In_b; 
     output [27:0] Out; 
     input Select; 
 assign Out = (Select == 1'b1) ? In_a : In_b; 
 
endmodule
