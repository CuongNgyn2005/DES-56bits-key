`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2025 10:51:04 AM
// Design Name: 
// Module Name: Test_mux
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


module Test_mux();
   reg [27:0] a, b; 
   wire [27:0] c; 
   reg S; 
   MUX2_1 mux(.In_a(a),.Select(S), .In_b(b), .Out(c));

   initial begin 
   a = 28'h0001234; 
   b = 28'h000ffff; 
   S = 1; 
   #5; 
   S = 0; 
   #20; $stop; 
   end 
endmodule
