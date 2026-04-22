`timescale 1ns / 1ps
module DES_ALGORITHM(Clk, Reset_n, Start, Plaintext, Key_in, Ciphertext, Done);
    input Clk;
    input Reset_n;
    input Start;
    input [63:0] Plaintext;
    input [63:0] Key_in;
    output [63:0] Ciphertext;
    output Done;

    // Initial permutation
    wire [31:0] L0_w, R0_w;
    IP ip_inst(.Data_in(Plaintext), .R0(R0_w), .L0(L0_w));

    // PC-1
    wire [27:0] C0_w, D0_w;
    PC_1 pc1_inst(.Des_key_in(Key_in), .C0(C0_w), .D0(D0_w));

    // Pipeline registers for Round 0 (Initial)
    reg [31:0] L_reg [0:16];
    reg [31:0] R_reg [0:16];
    reg [27:0] C_reg [0:16];
    reg [27:0] D_reg [0:16];
    reg        Valid_reg [0:16];

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[0] <= 32'b0;
            R_reg[0] <= 32'b0;
            C_reg[0] <= 28'b0;
            D_reg[0] <= 28'b0;
            Valid_reg[0] <= 1'b0;
        end else begin
            L_reg[0] <= L0_w;
            R_reg[0] <= R0_w;
            C_reg[0] <= C0_w;
            D_reg[0] <= D0_w;
            Valid_reg[0] <= Start;
        end
    end

    // ------------ Round 1 ------------
    wire [27:0] C1_next, D1_next;
    wire [47:0] SubKey_1;
    wire [31:0] f_result_1;

    SHIFT_LEFT_1 sl1_c_1 (.C_in(C_reg[0]), .C_out(C1_next));
    SHIFT_LEFT_1 sl1_d_1 (.C_in(D_reg[0]), .C_out(D1_next));
    PC_2 pc2_inst_1 (.In({C1_next, D1_next}), .Round_key(SubKey_1));
    F_FUNCTION f_block_1 (.R(R_reg[0]), .Key(SubKey_1), .F_out(f_result_1));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[1] <= 32'b0;
            R_reg[1] <= 32'b0;
            C_reg[1] <= 28'b0;
            D_reg[1] <= 28'b0;
            Valid_reg[1] <= 1'b0;
        end else begin
            L_reg[1] <= R_reg[0];
            R_reg[1] <= L_reg[0] ^ f_result_1;
            C_reg[1] <= C1_next;
            D_reg[1] <= D1_next;
            Valid_reg[1] <= Valid_reg[0];
        end
    end

    // ------------ Round 2 ------------
    wire [27:0] C2_next, D2_next;
    wire [47:0] SubKey_2;
    wire [31:0] f_result_2;

    SHIFT_LEFT_1 sl1_c_2 (.C_in(C_reg[1]), .C_out(C2_next));
    SHIFT_LEFT_1 sl1_d_2 (.C_in(D_reg[1]), .C_out(D2_next));
    PC_2 pc2_inst_2 (.In({C2_next, D2_next}), .Round_key(SubKey_2));
    F_FUNCTION f_block_2 (.R(R_reg[1]), .Key(SubKey_2), .F_out(f_result_2));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[2] <= 32'b0;
            R_reg[2] <= 32'b0;
            C_reg[2] <= 28'b0;
            D_reg[2] <= 28'b0;
            Valid_reg[2] <= 1'b0;
        end else begin
            L_reg[2] <= R_reg[1];
            R_reg[2] <= L_reg[1] ^ f_result_2;
            C_reg[2] <= C2_next;
            D_reg[2] <= D2_next;
            Valid_reg[2] <= Valid_reg[1];
        end
    end

    // ------------ Round 3 ------------
    wire [27:0] C3_next, D3_next;
    wire [47:0] SubKey_3;
    wire [31:0] f_result_3;

    SHIFT_LEFT_2 sl2_c_3 (.C_in(C_reg[2]), .C_out(C3_next));
    SHIFT_LEFT_2 sl2_d_3 (.C_in(D_reg[2]), .C_out(D3_next));
    PC_2 pc2_inst_3 (.In({C3_next, D3_next}), .Round_key(SubKey_3));
    F_FUNCTION f_block_3 (.R(R_reg[2]), .Key(SubKey_3), .F_out(f_result_3));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[3] <= 32'b0;
            R_reg[3] <= 32'b0;
            C_reg[3] <= 28'b0;
            D_reg[3] <= 28'b0;
            Valid_reg[3] <= 1'b0;
        end else begin
            L_reg[3] <= R_reg[2];
            R_reg[3] <= L_reg[2] ^ f_result_3;
            C_reg[3] <= C3_next;
            D_reg[3] <= D3_next;
            Valid_reg[3] <= Valid_reg[2];
        end
    end

    // ------------ Round 4 ------------
    wire [27:0] C4_next, D4_next;
    wire [47:0] SubKey_4;
    wire [31:0] f_result_4;

    SHIFT_LEFT_2 sl2_c_4 (.C_in(C_reg[3]), .C_out(C4_next));
    SHIFT_LEFT_2 sl2_d_4 (.C_in(D_reg[3]), .C_out(D4_next));
    PC_2 pc2_inst_4 (.In({C4_next, D4_next}), .Round_key(SubKey_4));
    F_FUNCTION f_block_4 (.R(R_reg[3]), .Key(SubKey_4), .F_out(f_result_4));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[4] <= 32'b0;
            R_reg[4] <= 32'b0;
            C_reg[4] <= 28'b0;
            D_reg[4] <= 28'b0;
            Valid_reg[4] <= 1'b0;
        end else begin
            L_reg[4] <= R_reg[3];
            R_reg[4] <= L_reg[3] ^ f_result_4;
            C_reg[4] <= C4_next;
            D_reg[4] <= D4_next;
            Valid_reg[4] <= Valid_reg[3];
        end
    end

    // ------------ Round 5 ------------
    wire [27:0] C5_next, D5_next;
    wire [47:0] SubKey_5;
    wire [31:0] f_result_5;

    SHIFT_LEFT_2 sl2_c_5 (.C_in(C_reg[4]), .C_out(C5_next));
    SHIFT_LEFT_2 sl2_d_5 (.C_in(D_reg[4]), .C_out(D5_next));
    PC_2 pc2_inst_5 (.In({C5_next, D5_next}), .Round_key(SubKey_5));
    F_FUNCTION f_block_5 (.R(R_reg[4]), .Key(SubKey_5), .F_out(f_result_5));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[5] <= 32'b0;
            R_reg[5] <= 32'b0;
            C_reg[5] <= 28'b0;
            D_reg[5] <= 28'b0;
            Valid_reg[5] <= 1'b0;
        end else begin
            L_reg[5] <= R_reg[4];
            R_reg[5] <= L_reg[4] ^ f_result_5;
            C_reg[5] <= C5_next;
            D_reg[5] <= D5_next;
            Valid_reg[5] <= Valid_reg[4];
        end
    end

    // ------------ Round 6 ------------
    wire [27:0] C6_next, D6_next;
    wire [47:0] SubKey_6;
    wire [31:0] f_result_6;

    SHIFT_LEFT_2 sl2_c_6 (.C_in(C_reg[5]), .C_out(C6_next));
    SHIFT_LEFT_2 sl2_d_6 (.C_in(D_reg[5]), .C_out(D6_next));
    PC_2 pc2_inst_6 (.In({C6_next, D6_next}), .Round_key(SubKey_6));
    F_FUNCTION f_block_6 (.R(R_reg[5]), .Key(SubKey_6), .F_out(f_result_6));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[6] <= 32'b0;
            R_reg[6] <= 32'b0;
            C_reg[6] <= 28'b0;
            D_reg[6] <= 28'b0;
            Valid_reg[6] <= 1'b0;
        end else begin
            L_reg[6] <= R_reg[5];
            R_reg[6] <= L_reg[5] ^ f_result_6;
            C_reg[6] <= C6_next;
            D_reg[6] <= D6_next;
            Valid_reg[6] <= Valid_reg[5];
        end
    end

    // ------------ Round 7 ------------
    wire [27:0] C7_next, D7_next;
    wire [47:0] SubKey_7;
    wire [31:0] f_result_7;

    SHIFT_LEFT_2 sl2_c_7 (.C_in(C_reg[6]), .C_out(C7_next));
    SHIFT_LEFT_2 sl2_d_7 (.C_in(D_reg[6]), .C_out(D7_next));
    PC_2 pc2_inst_7 (.In({C7_next, D7_next}), .Round_key(SubKey_7));
    F_FUNCTION f_block_7 (.R(R_reg[6]), .Key(SubKey_7), .F_out(f_result_7));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[7] <= 32'b0;
            R_reg[7] <= 32'b0;
            C_reg[7] <= 28'b0;
            D_reg[7] <= 28'b0;
            Valid_reg[7] <= 1'b0;
        end else begin
            L_reg[7] <= R_reg[6];
            R_reg[7] <= L_reg[6] ^ f_result_7;
            C_reg[7] <= C7_next;
            D_reg[7] <= D7_next;
            Valid_reg[7] <= Valid_reg[6];
        end
    end

    // ------------ Round 8 ------------
    wire [27:0] C8_next, D8_next;
    wire [47:0] SubKey_8;
    wire [31:0] f_result_8;

    SHIFT_LEFT_2 sl2_c_8 (.C_in(C_reg[7]), .C_out(C8_next));
    SHIFT_LEFT_2 sl2_d_8 (.C_in(D_reg[7]), .C_out(D8_next));
    PC_2 pc2_inst_8 (.In({C8_next, D8_next}), .Round_key(SubKey_8));
    F_FUNCTION f_block_8 (.R(R_reg[7]), .Key(SubKey_8), .F_out(f_result_8));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[8] <= 32'b0;
            R_reg[8] <= 32'b0;
            C_reg[8] <= 28'b0;
            D_reg[8] <= 28'b0;
            Valid_reg[8] <= 1'b0;
        end else begin
            L_reg[8] <= R_reg[7];
            R_reg[8] <= L_reg[7] ^ f_result_8;
            C_reg[8] <= C8_next;
            D_reg[8] <= D8_next;
            Valid_reg[8] <= Valid_reg[7];
        end
    end

    // ------------ Round 9 ------------
    wire [27:0] C9_next, D9_next;
    wire [47:0] SubKey_9;
    wire [31:0] f_result_9;

    SHIFT_LEFT_1 sl1_c_9 (.C_in(C_reg[8]), .C_out(C9_next));
    SHIFT_LEFT_1 sl1_d_9 (.C_in(D_reg[8]), .C_out(D9_next));
    PC_2 pc2_inst_9 (.In({C9_next, D9_next}), .Round_key(SubKey_9));
    F_FUNCTION f_block_9 (.R(R_reg[8]), .Key(SubKey_9), .F_out(f_result_9));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[9] <= 32'b0;
            R_reg[9] <= 32'b0;
            C_reg[9] <= 28'b0;
            D_reg[9] <= 28'b0;
            Valid_reg[9] <= 1'b0;
        end else begin
            L_reg[9] <= R_reg[8];
            R_reg[9] <= L_reg[8] ^ f_result_9;
            C_reg[9] <= C9_next;
            D_reg[9] <= D9_next;
            Valid_reg[9] <= Valid_reg[8];
        end
    end

    // ------------ Round 10 ------------
    wire [27:0] C10_next, D10_next;
    wire [47:0] SubKey_10;
    wire [31:0] f_result_10;

    SHIFT_LEFT_2 sl2_c_10 (.C_in(C_reg[9]), .C_out(C10_next));
    SHIFT_LEFT_2 sl2_d_10 (.C_in(D_reg[9]), .C_out(D10_next));
    PC_2 pc2_inst_10 (.In({C10_next, D10_next}), .Round_key(SubKey_10));
    F_FUNCTION f_block_10 (.R(R_reg[9]), .Key(SubKey_10), .F_out(f_result_10));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[10] <= 32'b0;
            R_reg[10] <= 32'b0;
            C_reg[10] <= 28'b0;
            D_reg[10] <= 28'b0;
            Valid_reg[10] <= 1'b0;
        end else begin
            L_reg[10] <= R_reg[9];
            R_reg[10] <= L_reg[9] ^ f_result_10;
            C_reg[10] <= C10_next;
            D_reg[10] <= D10_next;
            Valid_reg[10] <= Valid_reg[9];
        end
    end

    // ------------ Round 11 ------------
    wire [27:0] C11_next, D11_next;
    wire [47:0] SubKey_11;
    wire [31:0] f_result_11;

    SHIFT_LEFT_2 sl2_c_11 (.C_in(C_reg[10]), .C_out(C11_next));
    SHIFT_LEFT_2 sl2_d_11 (.C_in(D_reg[10]), .C_out(D11_next));
    PC_2 pc2_inst_11 (.In({C11_next, D11_next}), .Round_key(SubKey_11));
    F_FUNCTION f_block_11 (.R(R_reg[10]), .Key(SubKey_11), .F_out(f_result_11));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[11] <= 32'b0;
            R_reg[11] <= 32'b0;
            C_reg[11] <= 28'b0;
            D_reg[11] <= 28'b0;
            Valid_reg[11] <= 1'b0;
        end else begin
            L_reg[11] <= R_reg[10];
            R_reg[11] <= L_reg[10] ^ f_result_11;
            C_reg[11] <= C11_next;
            D_reg[11] <= D11_next;
            Valid_reg[11] <= Valid_reg[10];
        end
    end

    // ------------ Round 12 ------------
    wire [27:0] C12_next, D12_next;
    wire [47:0] SubKey_12;
    wire [31:0] f_result_12;

    SHIFT_LEFT_2 sl2_c_12 (.C_in(C_reg[11]), .C_out(C12_next));
    SHIFT_LEFT_2 sl2_d_12 (.C_in(D_reg[11]), .C_out(D12_next));
    PC_2 pc2_inst_12 (.In({C12_next, D12_next}), .Round_key(SubKey_12));
    F_FUNCTION f_block_12 (.R(R_reg[11]), .Key(SubKey_12), .F_out(f_result_12));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[12] <= 32'b0;
            R_reg[12] <= 32'b0;
            C_reg[12] <= 28'b0;
            D_reg[12] <= 28'b0;
            Valid_reg[12] <= 1'b0;
        end else begin
            L_reg[12] <= R_reg[11];
            R_reg[12] <= L_reg[11] ^ f_result_12;
            C_reg[12] <= C12_next;
            D_reg[12] <= D12_next;
            Valid_reg[12] <= Valid_reg[11];
        end
    end

    // ------------ Round 13 ------------
    wire [27:0] C13_next, D13_next;
    wire [47:0] SubKey_13;
    wire [31:0] f_result_13;

    SHIFT_LEFT_2 sl2_c_13 (.C_in(C_reg[12]), .C_out(C13_next));
    SHIFT_LEFT_2 sl2_d_13 (.C_in(D_reg[12]), .C_out(D13_next));
    PC_2 pc2_inst_13 (.In({C13_next, D13_next}), .Round_key(SubKey_13));
    F_FUNCTION f_block_13 (.R(R_reg[12]), .Key(SubKey_13), .F_out(f_result_13));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[13] <= 32'b0;
            R_reg[13] <= 32'b0;
            C_reg[13] <= 28'b0;
            D_reg[13] <= 28'b0;
            Valid_reg[13] <= 1'b0;
        end else begin
            L_reg[13] <= R_reg[12];
            R_reg[13] <= L_reg[12] ^ f_result_13;
            C_reg[13] <= C13_next;
            D_reg[13] <= D13_next;
            Valid_reg[13] <= Valid_reg[12];
        end
    end

    // ------------ Round 14 ------------
    wire [27:0] C14_next, D14_next;
    wire [47:0] SubKey_14;
    wire [31:0] f_result_14;

    SHIFT_LEFT_2 sl2_c_14 (.C_in(C_reg[13]), .C_out(C14_next));
    SHIFT_LEFT_2 sl2_d_14 (.C_in(D_reg[13]), .C_out(D14_next));
    PC_2 pc2_inst_14 (.In({C14_next, D14_next}), .Round_key(SubKey_14));
    F_FUNCTION f_block_14 (.R(R_reg[13]), .Key(SubKey_14), .F_out(f_result_14));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[14] <= 32'b0;
            R_reg[14] <= 32'b0;
            C_reg[14] <= 28'b0;
            D_reg[14] <= 28'b0;
            Valid_reg[14] <= 1'b0;
        end else begin
            L_reg[14] <= R_reg[13];
            R_reg[14] <= L_reg[13] ^ f_result_14;
            C_reg[14] <= C14_next;
            D_reg[14] <= D14_next;
            Valid_reg[14] <= Valid_reg[13];
        end
    end

    // ------------ Round 15 ------------
    wire [27:0] C15_next, D15_next;
    wire [47:0] SubKey_15;
    wire [31:0] f_result_15;

    SHIFT_LEFT_2 sl2_c_15 (.C_in(C_reg[14]), .C_out(C15_next));
    SHIFT_LEFT_2 sl2_d_15 (.C_in(D_reg[14]), .C_out(D15_next));
    PC_2 pc2_inst_15 (.In({C15_next, D15_next}), .Round_key(SubKey_15));
    F_FUNCTION f_block_15 (.R(R_reg[14]), .Key(SubKey_15), .F_out(f_result_15));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[15] <= 32'b0;
            R_reg[15] <= 32'b0;
            C_reg[15] <= 28'b0;
            D_reg[15] <= 28'b0;
            Valid_reg[15] <= 1'b0;
        end else begin
            L_reg[15] <= R_reg[14];
            R_reg[15] <= L_reg[14] ^ f_result_15;
            C_reg[15] <= C15_next;
            D_reg[15] <= D15_next;
            Valid_reg[15] <= Valid_reg[14];
        end
    end

    // ------------ Round 16 ------------
    wire [27:0] C16_next, D16_next;
    wire [47:0] SubKey_16;
    wire [31:0] f_result_16;

    SHIFT_LEFT_1 sl1_c_16 (.C_in(C_reg[15]), .C_out(C16_next));
    SHIFT_LEFT_1 sl1_d_16 (.C_in(D_reg[15]), .C_out(D16_next));
    PC_2 pc2_inst_16 (.In({C16_next, D16_next}), .Round_key(SubKey_16));
    F_FUNCTION f_block_16 (.R(R_reg[15]), .Key(SubKey_16), .F_out(f_result_16));

    always @(posedge Clk or negedge Reset_n) begin
        if (!Reset_n) begin
            L_reg[16] <= 32'b0;
            R_reg[16] <= 32'b0;
            C_reg[16] <= 28'b0;
            D_reg[16] <= 28'b0;
            Valid_reg[16] <= 1'b0;
        end else begin
            L_reg[16] <= R_reg[15];
            R_reg[16] <= L_reg[15] ^ f_result_16;
            C_reg[16] <= C16_next;
            D_reg[16] <= D16_next;
            Valid_reg[16] <= Valid_reg[15];
        end
    end

    // Final Permutation
    IP_1 final_perm (
        .In({R_reg[16], L_reg[16]}),  
        .Cipertext(Ciphertext)
    );
    
    assign Done = Valid_reg[16];

endmodule
