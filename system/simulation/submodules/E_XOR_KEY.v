`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 09:40:20 AM
// Design Name: 
// Module Name: E_XOR_KEY
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


module E_XOR_KEY(E,K, S1, S2,S3,S4,S5,S6,S7,S8);
   input [47:0] E,K;  
   output [5:0] S1,S2,S3,S4,S5,S6,S7,S8; 
   wire [47:0] TEMP; 
assign TEMP = E ^ K; 
assign	S1	= TEMP[47:42];
assign	S2	= TEMP[41:36];
assign	S3	= TEMP[35:30];
assign	S4	= TEMP[29:24];
assign	S5	= TEMP[23:18];
assign	S6	= TEMP[17:12];
assign	S7	= TEMP[11:6];
assign	S8	= TEMP[5:0];
endmodule 