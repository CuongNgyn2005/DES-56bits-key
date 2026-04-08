`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 01:28:48 PM
// Design Name: 
// Module Name: IP
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


module IP(Data_in,Reset, R0, L0);
     input [63:0] Data_in;
     input Reset;  
     output [31:0] R0,L0; 
	  reg [63:0]Data_temp; 
 always @(*) 
 begin  
    if(Reset) 
     Data_temp = 64'b0; 
  else begin 
  Data_temp	= {Data_in[6], Data_in[14], Data_in[22], Data_in[30], Data_in[38], Data_in[46], Data_in[54], Data_in[62],
		               Data_in[4], Data_in[12], Data_in[20], Data_in[28], Data_in[36], Data_in[44], Data_in[52], Data_in[60],
		               Data_in[2], Data_in[10], Data_in[18], Data_in[26], Data_in[34], Data_in[42], Data_in[50], Data_in[58],
		               Data_in[0], Data_in[8], Data_in[16], Data_in[24], Data_in[32], Data_in[40], Data_in[48], Data_in[56],
		               Data_in[7], Data_in[15], Data_in[23], Data_in[31], Data_in[39], Data_in[47], Data_in[55], Data_in[63],
		               Data_in[5], Data_in[13], Data_in[21], Data_in[29], Data_in[37], Data_in[45], Data_in[53], Data_in[61],
		               Data_in[3], Data_in[11], Data_in[19], Data_in[27], Data_in[35], Data_in[43], Data_in[51], Data_in[59],
		               Data_in[1], Data_in[9], Data_in[17], Data_in[25], Data_in[33], Data_in[41], Data_in[49], Data_in[57]};
 end 
   end 
assign	L0	= Data_temp[63:32];
assign	R0	= Data_temp[31:0];
endmodule
