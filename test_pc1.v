`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 04:52:42 PM
// Design Name: 
// Module Name: test_pc1
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


module test_pc1();
   
    reg [63:0] Des_key_in;   // ============== 64 BIT KEY DAU VAO ==================
    reg  Reset; 
    wire [27:0] C0,D0;       //=============== 54 BIT KEY DAU RA ===================
    
    
    PC_1 pc_1_test(.Des_key_in(Des_key_in), 
                   .Reset(Reset),
                   .C0(C0),
                   .D0(D0));
    
    initial begin 
    Reset = 1; 
    #5; 
    Reset = 0; 
    Des_key_in = 64'h0133457799bbcdff; 
    #5; 
    $stop; 
    end 
    initial begin 
    $monitor ("Des_key_in = %0h,\tReset = %0b, \tC0 = %0h, \tD0 = %0h", Des_key_in,Reset, C0, D0); 
    end 
    
endmodule
