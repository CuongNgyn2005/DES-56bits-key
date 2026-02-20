`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 08:33:31 PM
// Design Name: 
// Module Name: ROUND_KEY
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


module ROUND_KEY(Key_in,Clk,Clk2, Reset, Key_out,Done, Counter );
     input [63:0] Key_in; 
     input Clk, Reset; 
	  //input Start;
     input Clk2; 
     output [47:0] Key_out; 
     output Done; 
     output [4:0] Counter; 
      wire [27:0] C0, D0; 
      wire  [27:0] Out_mux1, out_mux2, Out_mux3, Out_mux4; 
      wire [27:0]  Reg_out_C0, Reg_out_D0; 
      wire [27:0] In_mux3_1,In_mux3_2, In_mux4_1, In_mux4_2;  
                                
     // ========================= TIN HIEU MAY TRANG THAI ==============================
 
     wire Select_mux_pc; 
     wire Select_mux_shift ; 
     
     STATE_MACHINE STATE(.Clk(Clk2), 
                     .Reset(Reset),
							//.Start(Start),
                     .Select_mux_pc_temp(Select_mux_pc),
                     .Select_mux_shift_temp(Select_mux_shift),
                     .Counter(Counter),
                     .Pre_state(),
                     .Next_state(),
                     .Done(Done));

     // ==========================KHOI HOAN VI 1========================================
     PC_1 PC1(.Des_key_in(Key_in),
               .Reset(Reset),
               .C0(C0),
               .D0(D0));
     
     // ======================= MUX CHON PC 1 VA C1 HOAC D1 ============================
     
     MUX2_1 MUX1 (.In_a(C0),     // select = 1 -> chon tin hieu tu PC_1 ( vong dau tien ) 
                  .Select(Select_mux_pc), 
                  .In_b(Out_mux3), 
                  .Out(Out_mux1));
                  
     MUX2_1 MUX2 (.In_a(D0),    // select = 1 -> chon tin hieu tu PC_1 ( vong dau tien )  
                  .Select(Select_mux_pc),
                  .In_b(Out_mux4),
                  .Out(out_mux2));
                  
     // ====================== KHOI REGISTER LUU GIA TRI SAU MUX 1 VA MUX 2 ============
  REGISTER_C0_D0 REGISTER(.C0(Out_mux1),
                        .D0(out_mux2),
                        .Clk(Clk),
                        .Reset(Reset),
                        .C0_out(Reg_out_C0),
                        .D0_out(Reg_out_D0));             
     // ==================== KHOI SHIFT LEFT 1, 2 ======================================
     
   SHIFT_LEFT_1 SHIFT1(.C_in(Reg_out_C0), .C_out(In_mux3_1));
   SHIFT_LEFT_2 SHIFT2(.C_in(Reg_out_C0), .C_out(In_mux3_2));
   
   SHIFT_LEFT_1 SHIFT3(.C_in(Reg_out_D0), .C_out(In_mux4_1));
   SHIFT_LEFT_2 SHIFT4(.C_in(Reg_out_D0), .C_out(In_mux4_2));
   
   // ======================KHOI MUX 3 VA MUX 4 ============
   
   MUX2_1 MUX3 (.In_a(In_mux3_2),     
                  .Select(Select_mux_shift), // select = 1 -> dich 2 
                  .In_b(In_mux3_1), 
                  .Out(Out_mux3));
                  
    MUX2_1 MUX4 (.In_a(In_mux4_2),     
                  .Select(Select_mux_shift),  // select = 1 -> dich 2 
                  .In_b(In_mux4_1),      
                  .Out(Out_mux4));
                
    PC_2 PC2    (.In({Out_mux3,Out_mux4}),
                 .Round_key(Key_out));
    
endmodule
