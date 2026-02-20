`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 09:44:28 AM
// Design Name: 
// Module Name: E_MATRIX
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


module E_MATRIX(R,E_OUT);
      input [31:0] R; 
      output [47:0] E_OUT; 
assign E_OUT = {R[0], R[31], R[30], R[29], R[28], R[27],
		R[28], R[27], R[26], R[25], R[24], R[23],
		R[24], R[23], R[22], R[21], R[20], R[19],
		R[20], R[19], R[18], R[17], R[16], R[15],
		R[16], R[15], R[14], R[13], R[12], R[11],
		R[12], R[11], R[10], R[9], R[8], R[7],
		R[8], R[7], R[6], R[5], R[4], R[3],
		R[4], R[3], R[2],R[1], R[0], R[31]};
endmodule
