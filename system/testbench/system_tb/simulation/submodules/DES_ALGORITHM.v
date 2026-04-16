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


module DES_ALGORITHM(Clk, Reset_n, Start, Plaintext, Key_in, Ciphertext, Done);
    input Clk;
    input Reset_n;
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
        .Reset_n(Reset_n), 
        .Start(Start), 
        .Counter(Counter), 
        .Shift_sel(shift_sel), 
        .Mux_sel(mux_sel), 
        .Done(Done)
    );
	 //====================DATAPATH===================
	 IP ip_inst(.Data_in(Plaintext), 
        .R0(R0), 
        .L0(L0)
    );
	 PC_1 pc1_inst (
        .Des_key_in(Key_in),  
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
	always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L <= 32'b0;
            R <= 32'b0;
            C <= 28'b0; 
            D <= 28'b0;
        end
        else begin
            if (Start == 1'b1) begin 
                // LOAD STATE: Chỉ nạp dữ liệu mới khi có xung Start
                L <= L0;
                R <= R0;
                C <= C0; 
                D <= D0;
            end
            else if (mux_sel==1 &&!Done) begin
                // PROCESSING STATE: Cập nhật theo vòng lặp DES
                L <= R;
                R <= L ^ f_result;
                C <= C_next;
                D <= D_next;
            end
            // HOLD STATE: 
            // Nếu không Start và không Processing, các thanh ghi L, R, C, D 
            // sẽ tự động giữ nguyên giá trị
        end
    end
	 //FINAL PERMUTATION
	 IP_1 final_perm (
        .In({R, L}),  
        .Cipertext(Ciphertext)
    );
endmodule
