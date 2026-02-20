`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 01:59:02 PM
// Design Name: 
// Module Name: DES_ALGORITHM
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


module DES_ALGORITHM(Clk, Reset, Start, Plaintext, Key_in, Ciphertext, Done);
    input Clk;
    input Reset;
    input Start;
    input [63:0] Plaintext;
    input [63:0] Key_in;
    output [63:0] Ciphertext;
    output Done;
    wire [3:0] Counter;
	 wire shift_sel;
	 wire mux_sel;
	 reg [31:0] L, R;       
    reg [27:0] C, D;
	 wire [31:0] L0,R0;
	 wire [27:0] C0,D0;
	 wire [27:0] C_shifted_1,D_shifted_1;
	 wire [27:0] C_shifted_2,D_shifted_2;
	 reg [27:0] C_next, D_next;
	 wire [47:0] SubKey;
	 wire [31:0] f_result;
    //====================CONTROL UNIT=================
	 DES_CONTROL control_unit(.Clk(Clk), 
        .Reset(Reset), 
        .Start(Start), 
        .Counter(Counter), 
        .Shift_sel(shift_sel), 
        .Mux_sel(mux_sel), 
        .Done(Done)
    );
	 //====================DATAPATH===================
	 IP ip_inst(.Data_in(Plaintext), 
        .Reset(Reset), 
        .R0(R0), 
        .L0(L0)
    );
	 PC_1 pc1_inst (
        .Des_key_in(Key_in), 
        .Reset(Reset), 
        .C0(C0), 
        .D0(D0)
    );
	 SHIFT_LEFT_1 sl1_c (.C_in(C), .C_out(C_shifted_1));
    SHIFT_LEFT_1 sl1_d (.C_in(D), .C_out(D_shifted_1));
    
    SHIFT_LEFT_2 sl2_c (.C_in(C), .C_out(C_shifted_2));
    SHIFT_LEFT_2 sl2_d (.C_in(D), .C_out(D_shifted_2));
	 
	 //MUX SELECT SHIFT 1 OR SHIFT 2
	 always @(*) begin
        if (shift_sel == 1'b0) begin
            C_next = C_shifted_1;
            D_next = D_shifted_1;
        end else begin
            C_next = C_shifted_2;
            D_next = D_shifted_2;
        end
    end
	 PC_2 pc2_inst (
        .In({C_next, D_next}), 
        .Round_key(SubKey)
    );
	 F_FUNCTION f_block (
        .R(R), 
        .Key(SubKey), 
        .F_out(f_result)
    );
	 // UPDATE REGISTER
	 always @(posedge Clk or posedge Reset) begin
        if (Reset) begin
            L <= 32'b0; 
            R <= 32'b0;
            C <= 28'b0; 
            D <= 28'b0;
        end
        else begin
            if (mux_sel == 1'b0) begin 
                // Trang thai IDLE: Lien tuc nap du lieu moi tu IP/PC1
                L <= L0; 
                R <= R0;
                C <= C0; 
                D <= D0;
            end
            else if (!Done) begin
                // Trang thai PROCESSING: Cap nhat theo vong lap DES
                // L(n) = R(n-1)
                // R(n) = L(n-1) XOR f(R(n-1), K(n))
                L <= R;
                R <= L ^ f_result; 
                
                // Cap nhat Key C, D cho vong sau
                C <= C_next;
                D <= D_next;
            end
        end
    end
	 //FINAL PERMUTATION
	 IP_1 final_perm (
        .In({R, L}), 
        .Reset(Reset), 
        .Cipertext(Ciphertext)
    );
endmodule
