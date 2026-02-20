`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 11:05:41 PM
// Design Name: 
// Module Name: Test_roundkey
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
/*
   ROUND_KEY(Key_in,Clk, Reset, Key_out );
     input [63:0] Key_in; 
     input Clk, Reset; 
     output [47:0] Key_out; 
*/

module Test_roundkey();
  
   reg [63:0]Key_in; 
   reg Clk, Reset;
   reg Clk2;  
   wire [47:0] Key_out; 
   wire Done;  
   ROUND_KEY UUT(.Key_in(Key_in),
                 .Clk(Clk),
                 .Clk2(Clk2),
                 .Reset(Reset), 
                 .Key_out(Key_out),
                 .Done(Done) ); 
   
   
   initial begin
     Clk = 0;
     #2; 
     forever #5 Clk = ~Clk;   
   end 
   initial begin 
      Clk2 =0; 
      forever #5 Clk2 = ~ Clk2; 
   end 
   initial begin
      Reset = 1'b1; 
      Key_in = 64'h0133457799bbcdff; 
      @(posedge Clk); 
      Reset = 1'b0; 
    /*  @(posedge Clk) 
      Key_in = 64'h0133457799bbcbcc;
      */ 
    
      
   end 
   
   initial begin 
      $monitor("Key_in = %0h, \t Reset = %0b; \t Key_out = %0h", Key_in,Reset,Key_out); 
   end
   
endmodule
