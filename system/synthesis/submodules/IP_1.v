`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 02:01:27 PM
// Design Name: 
// Module Name: IP_1
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


module IP_1(In,Reset,Cipertext);
    input [63:0] In; 
    input Reset; 
    output reg [63:0] Cipertext; 
    always @(*) 
    begin
        if(Reset) 
           Cipertext = 0; 
        else 
        begin 
        Cipertext	= {In[24], In[56], In[16], In[48], In[8], In[40], In[0], In[32],
			In[25], In[57], In[17], In[49], In[9], In[41], In[1], In[33],
			In[26], In[58], In[18], In[50], In[10], In[42], In[2], In[34],
			In[27], In[59], In[19], In[51], In[11], In[43], In[3], In[35],
			In[28], In[60], In[20], In[52], In[12], In[44], In[4], In[36],
			In[29], In[61], In[21], In[53], In[13], In[45], In[5], In[37],
			In[30], In[62], In[22], In[54], In[14], In[46], In[6], In[38],
			In[31], In[63], In[23], In[55], In[15], In[47], In[7], In[39]};
        end 
    end 
endmodule