`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 04:30:36 PM
// Design Name: 
// Module Name: PC_1
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

// =======================HOAN VI PERNMUTATION CHOICE 1==============================

module PC_1(Des_key_in,Reset,C0,D0);
    
    input [63:0] Des_key_in;   // ============== 64 BIT KEY DAU VAO ==================
    input Reset; 
    output reg [27:0] C0,D0;       //=============== 54 BIT KEY DAU RA ===================
    
    
    always @(*) 
    begin 
      if(Reset == 1'b1) 
        begin
          C0 = 32'b0; 
          D0 = 32'b0; 
        end
      else
      begin   
         C0	= {Des_key_in[7], Des_key_in[15], Des_key_in[23], Des_key_in[31], Des_key_in[39], Des_key_in[47], Des_key_in[55],
               Des_key_in[63],Des_key_in[6], Des_key_in[14],Des_key_in[22],Des_key_in[30],Des_key_in[38],Des_key_in[46],
               Des_key_in[54],Des_key_in[62],Des_key_in[5],Des_key_in[13],Des_key_in[21],Des_key_in[29],Des_key_in[37],
               Des_key_in[45],Des_key_in[53],Des_key_in[61],Des_key_in[4],Des_key_in[12],Des_key_in[20],Des_key_in[28]};
         D0= {Des_key_in[1], Des_key_in[9],Des_key_in[17],Des_key_in[25],Des_key_in[33],Des_key_in[41],Des_key_in[49],
              Des_key_in[57],Des_key_in[2],Des_key_in[10],Des_key_in[18],Des_key_in[26],Des_key_in[34],Des_key_in[42],
              Des_key_in[50],Des_key_in[58], Des_key_in[3], Des_key_in[11],Des_key_in[19],Des_key_in[27],Des_key_in[35],
              Des_key_in[43],Des_key_in[51],Des_key_in[59],Des_key_in[36], Des_key_in[44],Des_key_in[52], Des_key_in[60]};
	  end 
   end 	
endmodule
//=================================================== DA TEST CHUC NANG =======================================================