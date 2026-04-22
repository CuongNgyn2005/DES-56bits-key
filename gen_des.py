# gen_des.py
shifts = [1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1]

code = """`timescale 1ns / 1ps
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

"""

for i in range(1, 17):
    shift = shifts[i-1]
    
    code += f"    // ------------ Round {i} ------------\n"
    code += f"    wire [27:0] C{i}_next, D{i}_next;\n"
    code += f"    wire [47:0] SubKey_{i};\n"
    code += f"    wire [31:0] f_result_{i};\n\n"
    
    if shift == 1:
        code += f"    SHIFT_LEFT_1 sl1_c_{i} (.C_in(C_reg[{i-1}]), .C_out(C{i}_next));\n"
        code += f"    SHIFT_LEFT_1 sl1_d_{i} (.C_in(D_reg[{i-1}]), .C_out(D{i}_next));\n"
    else:
        code += f"    SHIFT_LEFT_2 sl2_c_{i} (.C_in(C_reg[{i-1}]), .C_out(C{i}_next));\n"
        code += f"    SHIFT_LEFT_2 sl2_d_{i} (.C_in(D_reg[{i-1}]), .C_out(D{i}_next));\n"
        
    code += f"    PC_2 pc2_inst_{i} (.In({{C{i}_next, D{i}_next}}), .Round_key(SubKey_{i}));\n"
    code += f"    F_FUNCTION f_block_{i} (.R(R_reg[{i-1}]), .Key(SubKey_{i}), .F_out(f_result_{i}));\n\n"
    
    code += f"    always @(posedge Clk or negedge Reset_n) begin\n"
    code += f"        if (!Reset_n) begin\n"
    code += f"            L_reg[{i}] <= 32'b0;\n"
    code += f"            R_reg[{i}] <= 32'b0;\n"
    code += f"            C_reg[{i}] <= 28'b0;\n"
    code += f"            D_reg[{i}] <= 28'b0;\n"
    code += f"            Valid_reg[{i}] <= 1'b0;\n"
    code += f"        end else begin\n"
    code += f"            L_reg[{i}] <= R_reg[{i-1}];\n"
    code += f"            R_reg[{i}] <= L_reg[{i-1}] ^ f_result_{i};\n"
    code += f"            C_reg[{i}] <= C{i}_next;\n"
    code += f"            D_reg[{i}] <= D{i}_next;\n"
    code += f"            Valid_reg[{i}] <= Valid_reg[{i-1}];\n"
    code += f"        end\n"
    code += f"    end\n\n"

code += """    // Final Permutation
    IP_1 final_perm (
        .In({R_reg[16], L_reg[16]}),  
        .Cipertext(Ciphertext)
    );
    
    assign Done = Valid_reg[16];

endmodule
"""

with open("d:\\\\CE433\\\\DES-56bits-key\\\\DES_ALGORITHM.v", "w") as f:
    f.write(code)
