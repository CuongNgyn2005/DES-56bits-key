`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 10:46:26 AM
// Design Name: 
// Module Name: F_FUNCTION
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


module F_FUNCTION(R, Key,F_out);
   input [47:0] Key;
   input [31:0] R; 
   output [31:0] F_out; 
   
   wire [47:0]E_OUT; 
   wire [5:0] S1,S2,S3,S4,S5,S6,S7,S8; 
   wire [31:0] S_out; 
    E_MATRIX E(.R(R),
              .E_OUT(E_OUT));
              
    E_XOR_KEY e_xor_key(
                .E(E_OUT),
                .K(Key), 
                .S1(S1),
                .S2(S2),
                .S3(S3),
                .S4(S4),
                .S5(S5),
                .S6(S6),
                .S7(S7),
                .S8(S8)); 
                
    S_BOX s_box(.S1_in(S1),
                .S2_in(S2),
                .S3_in(S3),
                .S4_in(S4),
                .S5_in(S5),
                .S6_in(S6),
                .S7_in(S7),
                .S8_in(S8), 
                .S_out(S_out));
  P_MATRIX p_matrix(.P_in(S_out), .P_out(F_out));
  
endmodule
