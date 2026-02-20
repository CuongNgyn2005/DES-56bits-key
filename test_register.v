`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 11:34:36 PM
// Design Name: 
// Module Name: test_register
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

 REGISTER_C0_D0(C0,Clk,Reset, D0,C0_out,D0_out);
*/
module test_register( );
    reg [27:0] C0, D0; 
    reg Clk, Reset; 
    wire [27:0] C0_out, D0_out; 
    
    REGISTER_C0_D0 UUT (.C0(C0),.Clk(Clk),.Reset(Reset),.D0(D0),.C0_out(C0_out),.D0_out(D0_out));
    
    initial begin
    Clk = 0;  
    forever #5 Clk = ~Clk; 
    end 
    initial begin
     Reset = 1; 
     @(posedge Clk) ; 
     Reset = 0; 
     C0 = 28'h00000ff; 
     D0 = 28'h00001fc; 
     @(posedge Clk); 
     C0 = 28'h00000cb; 
     D0 = 28'h00231fc; 
     #20; $stop; 
    end 
endmodule
