`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: S_BOX
// Description: DES S-Boxes (Optimized Look-Up Table Version)
//////////////////////////////////////////////////////////////////////////////////

module S_BOX(
    input [5:0] S1_in, S2_in, S3_in, S4_in, S5_in, S6_in, S7_in, S8_in, 
    output [31:0] S_out
    );

    reg [3:0] s1_out, s2_out, s3_out, s4_out, s5_out, s6_out, s7_out, s8_out;

    // Tính toán địa chỉ tra bảng: {Row, Column}
    // Row = {in[5], in[0]}, Column = in[4:1]
    wire [5:0] addr1 = {S1_in[5], S1_in[0], S1_in[4:1]};
    wire [5:0] addr2 = {S2_in[5], S2_in[0], S2_in[4:1]};
    wire [5:0] addr3 = {S3_in[5], S3_in[0], S3_in[4:1]};
    wire [5:0] addr4 = {S4_in[5], S4_in[0], S4_in[4:1]};
    wire [5:0] addr5 = {S5_in[5], S5_in[0], S5_in[4:1]};
    wire [5:0] addr6 = {S6_in[5], S6_in[0], S6_in[4:1]};
    wire [5:0] addr7 = {S7_in[5], S7_in[0], S7_in[4:1]};
    wire [5:0] addr8 = {S8_in[5], S8_in[0], S8_in[4:1]};

    // S-BOX 1
    always @(*) begin
        case (addr1)
            6'h00: s1_out = 4'd14; 6'h01: s1_out = 4'd4;  6'h02: s1_out = 4'd13; 6'h03: s1_out = 4'd1;
            6'h04: s1_out = 4'd2;  6'h05: s1_out = 4'd15; 6'h06: s1_out = 4'd11; 6'h07: s1_out = 4'd8;
            6'h08: s1_out = 4'd3;  6'h09: s1_out = 4'd10; 6'h0A: s1_out = 4'd6;  6'h0B: s1_out = 4'd12;
            6'h0C: s1_out = 4'd5;  6'h0D: s1_out = 4'd9;  6'h0E: s1_out = 4'd0;  6'h0F: s1_out = 4'd7;
            
            6'h10: s1_out = 4'd0;  6'h11: s1_out = 4'd15; 6'h12: s1_out = 4'd7;  6'h13: s1_out = 4'd4;
            6'h14: s1_out = 4'd14; 6'h15: s1_out = 4'd2;  6'h16: s1_out = 4'd13; 6'h17: s1_out = 4'd1;
            6'h18: s1_out = 4'd10; 6'h19: s1_out = 4'd6;  6'h1A: s1_out = 4'd12; 6'h1B: s1_out = 4'd11;
            6'h1C: s1_out = 4'd9;  6'h1D: s1_out = 4'd5;  6'h1E: s1_out = 4'd3;  6'h1F: s1_out = 4'd8;
            
            6'h20: s1_out = 4'd4;  6'h21: s1_out = 4'd1;  6'h22: s1_out = 4'd14; 6'h23: s1_out = 4'd8;
            6'h24: s1_out = 4'd13; 6'h25: s1_out = 4'd6;  6'h26: s1_out = 4'd2;  6'h27: s1_out = 4'd11;
            6'h28: s1_out = 4'd15; 6'h29: s1_out = 4'd12; 6'h2A: s1_out = 4'd9;  6'h2B: s1_out = 4'd7;
            6'h2C: s1_out = 4'd3;  6'h2D: s1_out = 4'd10; 6'h2E: s1_out = 4'd5;  6'h2F: s1_out = 4'd0;
            
            6'h30: s1_out = 4'd15; 6'h31: s1_out = 4'd12; 6'h32: s1_out = 4'd8;  6'h33: s1_out = 4'd2;
            6'h34: s1_out = 4'd4;  6'h35: s1_out = 4'd9;  6'h36: s1_out = 4'd1;  6'h37: s1_out = 4'd7;
            6'h38: s1_out = 4'd5;  6'h39: s1_out = 4'd11; 6'h3A: s1_out = 4'd3;  6'h3B: s1_out = 4'd14;
            6'h3C: s1_out = 4'd10; 6'h3D: s1_out = 4'd0;  6'h3E: s1_out = 4'd6;  6'h3F: s1_out = 4'd13;
        endcase
    end

    // S-BOX 2
    always @(*) begin
        case (addr2)
            6'h00: s2_out = 4'd15; 6'h01: s2_out = 4'd1;  6'h02: s2_out = 4'd8;  6'h03: s2_out = 4'd14;
            6'h04: s2_out = 4'd6;  6'h05: s2_out = 4'd11; 6'h06: s2_out = 4'd3;  6'h07: s2_out = 4'd4;
            6'h08: s2_out = 4'd9;  6'h09: s2_out = 4'd7;  6'h0A: s2_out = 4'd2;  6'h0B: s2_out = 4'd13;
            6'h0C: s2_out = 4'd12; 6'h0D: s2_out = 4'd0;  6'h0E: s2_out = 4'd5;  6'h0F: s2_out = 4'd10;
            
            6'h10: s2_out = 4'd3;  6'h11: s2_out = 4'd13; 6'h12: s2_out = 4'd4;  6'h13: s2_out = 4'd7;
            6'h14: s2_out = 4'd15; 6'h15: s2_out = 4'd2;  6'h16: s2_out = 4'd8;  6'h17: s2_out = 4'd14;
            6'h18: s2_out = 4'd12; 6'h19: s2_out = 4'd0;  6'h1A: s2_out = 4'd1;  6'h1B: s2_out = 4'd10;
            6'h1C: s2_out = 4'd6;  6'h1D: s2_out = 4'd9;  6'h1E: s2_out = 4'd11; 6'h1F: s2_out = 4'd5;
            
            6'h20: s2_out = 4'd0;  6'h21: s2_out = 4'd14; 6'h22: s2_out = 4'd7;  6'h23: s2_out = 4'd11;
            6'h24: s2_out = 4'd10; 6'h25: s2_out = 4'd4;  6'h26: s2_out = 4'd13; 6'h27: s2_out = 4'd1;
            6'h28: s2_out = 4'd5;  6'h29: s2_out = 4'd8;  6'h2A: s2_out = 4'd12; 6'h2B: s2_out = 4'd6;
            6'h2C: s2_out = 4'd9;  6'h2D: s2_out = 4'd3;  6'h2E: s2_out = 4'd2;  6'h2F: s2_out = 4'd15;
            
            6'h30: s2_out = 4'd13; 6'h31: s2_out = 4'd8;  6'h32: s2_out = 4'd10; 6'h33: s2_out = 4'd1;
            6'h34: s2_out = 4'd3;  6'h35: s2_out = 4'd15; 6'h36: s2_out = 4'd4;  6'h37: s2_out = 4'd2;
            6'h38: s2_out = 4'd11; 6'h39: s2_out = 4'd6;  6'h3A: s2_out = 4'd7;  6'h3B: s2_out = 4'd12;
            6'h3C: s2_out = 4'd0;  6'h3D: s2_out = 4'd5;  6'h3E: s2_out = 4'd14; 6'h3F: s2_out = 4'd9;
        endcase
    end

    // S-BOX 3
    always @(*) begin
        case (addr3)
            6'h00: s3_out = 4'd10; 6'h01: s3_out = 4'd0;  6'h02: s3_out = 4'd9;  6'h03: s3_out = 4'd14;
            6'h04: s3_out = 4'd6;  6'h05: s3_out = 4'd3;  6'h06: s3_out = 4'd15; 6'h07: s3_out = 4'd5;
            6'h08: s3_out = 4'd1;  6'h09: s3_out = 4'd13; 6'h0A: s3_out = 4'd12; 6'h0B: s3_out = 4'd7;
            6'h0C: s3_out = 4'd11; 6'h0D: s3_out = 4'd4;  6'h0E: s3_out = 4'd2;  6'h0F: s3_out = 4'd8;
            
            6'h10: s3_out = 4'd13; 6'h11: s3_out = 4'd7;  6'h12: s3_out = 4'd0;  6'h13: s3_out = 4'd9;
            6'h14: s3_out = 4'd3;  6'h15: s3_out = 4'd4;  6'h16: s3_out = 4'd6;  6'h17: s3_out = 4'd10;
            6'h18: s3_out = 4'd2;  6'h19: s3_out = 4'd8;  6'h1A: s3_out = 4'd5;  6'h1B: s3_out = 4'd14;
            6'h1C: s3_out = 4'd12; 6'h1D: s3_out = 4'd11; 6'h1E: s3_out = 4'd15; 6'h1F: s3_out = 4'd1;
            
            6'h20: s3_out = 4'd13; 6'h21: s3_out = 4'd6;  6'h22: s3_out = 4'd4;  6'h23: s3_out = 4'd9;
            6'h24: s3_out = 4'd8;  6'h25: s3_out = 4'd15; 6'h26: s3_out = 4'd3;  6'h27: s3_out = 4'd0;
            6'h28: s3_out = 4'd11; 6'h29: s3_out = 4'd1;  6'h2A: s3_out = 4'd2;  6'h2B: s3_out = 4'd12;
            6'h2C: s3_out = 4'd5;  6'h2D: s3_out = 4'd10; 6'h2E: s3_out = 4'd14; 6'h2F: s3_out = 4'd7;
            
            6'h30: s3_out = 4'd1;  6'h31: s3_out = 4'd10; 6'h32: s3_out = 4'd13; 6'h33: s3_out = 4'd0;
            6'h34: s3_out = 4'd6;  6'h35: s3_out = 4'd9;  6'h36: s3_out = 4'd8;  6'h37: s3_out = 4'd7;
            6'h38: s3_out = 4'd4;  6'h39: s3_out = 4'd15; 6'h3A: s3_out = 4'd14; 6'h3B: s3_out = 4'd3;
            6'h3C: s3_out = 4'd11; 6'h3D: s3_out = 4'd5;  6'h3E: s3_out = 4'd2;  6'h3F: s3_out = 4'd12;
        endcase
    end

    // S-BOX 4
    always @(*) begin
        case (addr4)
            6'h00: s4_out = 4'd7;  6'h01: s4_out = 4'd13; 6'h02: s4_out = 4'd14; 6'h03: s4_out = 4'd3;
            6'h04: s4_out = 4'd0;  6'h05: s4_out = 4'd6;  6'h06: s4_out = 4'd9;  6'h07: s4_out = 4'd10;
            6'h08: s4_out = 4'd1;  6'h09: s4_out = 4'd2;  6'h0A: s4_out = 4'd8;  6'h0B: s4_out = 4'd5;
            6'h0C: s4_out = 4'd11; 6'h0D: s4_out = 4'd12; 6'h0E: s4_out = 4'd4;  6'h0F: s4_out = 4'd15;
            
            6'h10: s4_out = 4'd13; 6'h11: s4_out = 4'd8;  6'h12: s4_out = 4'd11; 6'h13: s4_out = 4'd5;
            6'h14: s4_out = 4'd6;  6'h15: s4_out = 4'd15; 6'h16: s4_out = 4'd0;  6'h17: s4_out = 4'd3;
            6'h18: s4_out = 4'd4;  6'h19: s4_out = 4'd7;  6'h1A: s4_out = 4'd2;  6'h1B: s4_out = 4'd12;
            6'h1C: s4_out = 4'd1;  6'h1D: s4_out = 4'd10; 6'h1E: s4_out = 4'd14; 6'h1F: s4_out = 4'd9;
            
            6'h20: s4_out = 4'd10; 6'h21: s4_out = 4'd6;  6'h22: s4_out = 4'd9;  6'h23: s4_out = 4'd0;
            6'h24: s4_out = 4'd12; 6'h25: s4_out = 4'd11; 6'h26: s4_out = 4'd7;  6'h27: s4_out = 4'd13;
            6'h28: s4_out = 4'd15; 6'h29: s4_out = 4'd1;  6'h2A: s4_out = 4'd3;  6'h2B: s4_out = 4'd14;
            6'h2C: s4_out = 4'd5;  6'h2D: s4_out = 4'd2;  6'h2E: s4_out = 4'd8;  6'h2F: s4_out = 4'd4;
            
            6'h30: s4_out = 4'd3;  6'h31: s4_out = 4'd15; 6'h32: s4_out = 4'd0;  6'h33: s4_out = 4'd6;
            6'h34: s4_out = 4'd10; 6'h35: s4_out = 4'd1;  6'h36: s4_out = 4'd13; 6'h37: s4_out = 4'd8;
            6'h38: s4_out = 4'd9;  6'h39: s4_out = 4'd4;  6'h3A: s4_out = 4'd5;  6'h3B: s4_out = 4'd11;
            6'h3C: s4_out = 4'd12; 6'h3D: s4_out = 4'd7;  6'h3E: s4_out = 4'd2;  6'h3F: s4_out = 4'd14;
        endcase
    end

    // S-BOX 5
    always @(*) begin
        case (addr5)
            6'h00: s5_out = 4'd2;  6'h01: s5_out = 4'd12; 6'h02: s5_out = 4'd4;  6'h03: s5_out = 4'd1;
            6'h04: s5_out = 4'd7;  6'h05: s5_out = 4'd10; 6'h06: s5_out = 4'd11; 6'h07: s5_out = 4'd6;
            6'h08: s5_out = 4'd8;  6'h09: s5_out = 4'd5;  6'h0A: s5_out = 4'd3;  6'h0B: s5_out = 4'd15;
            6'h0C: s5_out = 4'd13; 6'h0D: s5_out = 4'd0;  6'h0E: s5_out = 4'd14; 6'h0F: s5_out = 4'd9;
            
            6'h10: s5_out = 4'd14; 6'h11: s5_out = 4'd11; 6'h12: s5_out = 4'd2;  6'h13: s5_out = 4'd12;
            6'h14: s5_out = 4'd4;  6'h15: s5_out = 4'd7;  6'h16: s5_out = 4'd13; 6'h17: s5_out = 4'd1;
            6'h18: s5_out = 4'd5;  6'h19: s5_out = 4'd0;  6'h1A: s5_out = 4'd15; 6'h1B: s5_out = 4'd10;
            6'h1C: s5_out = 4'd3;  6'h1D: s5_out = 4'd9;  6'h1E: s5_out = 4'd8;  6'h1F: s5_out = 4'd6;
            
            6'h20: s5_out = 4'd4;  6'h21: s5_out = 4'd2;  6'h22: s5_out = 4'd1;  6'h23: s5_out = 4'd11;
            6'h24: s5_out = 4'd10; 6'h25: s5_out = 4'd13; 6'h26: s5_out = 4'd7;  6'h27: s5_out = 4'd8;
            6'h28: s5_out = 4'd15; 6'h29: s5_out = 4'd9;  6'h2A: s5_out = 4'd12; 6'h2B: s5_out = 4'd5;
            6'h2C: s5_out = 4'd6;  6'h2D: s5_out = 4'd3;  6'h2E: s5_out = 4'd0;  6'h2F: s5_out = 4'd14;
            
            6'h30: s5_out = 4'd11; 6'h31: s5_out = 4'd8;  6'h32: s5_out = 4'd12; 6'h33: s5_out = 4'd7;
            6'h34: s5_out = 4'd1;  6'h35: s5_out = 4'd14; 6'h36: s5_out = 4'd2;  6'h37: s5_out = 4'd13;
            6'h38: s5_out = 4'd6;  6'h39: s5_out = 4'd15; 6'h3A: s5_out = 4'd0;  6'h3B: s5_out = 4'd9;
            6'h3C: s5_out = 4'd10; 6'h3D: s5_out = 4'd4;  6'h3E: s5_out = 4'd5;  6'h3F: s5_out = 4'd3;
        endcase
    end

    // S-BOX 6
    always @(*) begin
        case (addr6)
            6'h00: s6_out = 4'd12; 6'h01: s6_out = 4'd1;  6'h02: s6_out = 4'd10; 6'h03: s6_out = 4'd15;
            6'h04: s6_out = 4'd9;  6'h05: s6_out = 4'd2;  6'h06: s6_out = 4'd6;  6'h07: s6_out = 4'd8;
            6'h08: s6_out = 4'd0;  6'h09: s6_out = 4'd13; 6'h0A: s6_out = 4'd3;  6'h0B: s6_out = 4'd4;
            6'h0C: s6_out = 4'd14; 6'h0D: s6_out = 4'd7;  6'h0E: s6_out = 4'd5;  6'h0F: s6_out = 4'd11;
            
            6'h10: s6_out = 4'd10; 6'h11: s6_out = 4'd15; 6'h12: s6_out = 4'd4;  6'h13: s6_out = 4'd2;
            6'h14: s6_out = 4'd7;  6'h15: s6_out = 4'd12; 6'h16: s6_out = 4'd9;  6'h17: s6_out = 4'd5;
            6'h18: s6_out = 4'd6;  6'h19: s6_out = 4'd1;  6'h1A: s6_out = 4'd13; 6'h1B: s6_out = 4'd14;
            6'h1C: s6_out = 4'd0;  6'h1D: s6_out = 4'd11; 6'h1E: s6_out = 4'd3;  6'h1F: s6_out = 4'd8;
            
            6'h20: s6_out = 4'd9;  6'h21: s6_out = 4'd14; 6'h22: s6_out = 4'd15; 6'h23: s6_out = 4'd5;
            6'h24: s6_out = 4'd2;  6'h25: s6_out = 4'd8;  6'h26: s6_out = 4'd12; 6'h27: s6_out = 4'd3;
            6'h28: s6_out = 4'd7;  6'h29: s6_out = 4'd0;  6'h2A: s6_out = 4'd4;  6'h2B: s6_out = 4'd10;
            6'h2C: s6_out = 4'd1;  6'h2D: s6_out = 4'd13; 6'h2E: s6_out = 4'd11; 6'h2F: s6_out = 4'd6;
            
            6'h30: s6_out = 4'd4;  6'h31: s6_out = 4'd3;  6'h32: s6_out = 4'd2;  6'h33: s6_out = 4'd12;
            6'h34: s6_out = 4'd9;  6'h35: s6_out = 4'd5;  6'h36: s6_out = 4'd15; 6'h37: s6_out = 4'd10;
            6'h38: s6_out = 4'd11; 6'h39: s6_out = 4'd14; 6'h3A: s6_out = 4'd1;  6'h3B: s6_out = 4'd7;
            6'h3C: s6_out = 4'd6;  6'h3D: s6_out = 4'd0;  6'h3E: s6_out = 4'd8;  6'h3F: s6_out = 4'd13;
        endcase
    end

    // S-BOX 7
    always @(*) begin
        case (addr7)
            6'h00: s7_out = 4'd4;  6'h01: s7_out = 4'd11; 6'h02: s7_out = 4'd2;  6'h03: s7_out = 4'd14;
            6'h04: s7_out = 4'd15; 6'h05: s7_out = 4'd0;  6'h06: s7_out = 4'd8;  6'h07: s7_out = 4'd13;
            6'h08: s7_out = 4'd3;  6'h09: s7_out = 4'd12; 6'h0A: s7_out = 4'd9;  6'h0B: s7_out = 4'd7;
            6'h0C: s7_out = 4'd5;  6'h0D: s7_out = 4'd10; 6'h0E: s7_out = 4'd6;  6'h0F: s7_out = 4'd1;
            
            6'h10: s7_out = 4'd13; 6'h11: s7_out = 4'd0;  6'h12: s7_out = 4'd11; 6'h13: s7_out = 4'd7;
            6'h14: s7_out = 4'd4;  6'h15: s7_out = 4'd9;  6'h16: s7_out = 4'd1;  6'h17: s7_out = 4'd10;
            6'h18: s7_out = 4'd14; 6'h19: s7_out = 4'd3;  6'h1A: s7_out = 4'd5;  6'h1B: s7_out = 4'd12;
            6'h1C: s7_out = 4'd2;  6'h1D: s7_out = 4'd15; 6'h1E: s7_out = 4'd8;  6'h1F: s7_out = 4'd6;
            
            6'h20: s7_out = 4'd1;  6'h21: s7_out = 4'd4;  6'h22: s7_out = 4'd11; 6'h23: s7_out = 4'd13;
            6'h24: s7_out = 4'd12; 6'h25: s7_out = 4'd3;  6'h26: s7_out = 4'd7;  6'h27: s7_out = 4'd14;
            6'h28: s7_out = 4'd10; 6'h29: s7_out = 4'd15; 6'h2A: s7_out = 4'd6;  6'h2B: s7_out = 4'd8;
            6'h2C: s7_out = 4'd0;  6'h2D: s7_out = 4'd5;  6'h2E: s7_out = 4'd9;  6'h2F: s7_out = 4'd2;
            
            6'h30: s7_out = 4'd6;  6'h31: s7_out = 4'd11; 6'h32: s7_out = 4'd13; 6'h33: s7_out = 4'd8;
            6'h34: s7_out = 4'd1;  6'h35: s7_out = 4'd4;  6'h36: s7_out = 4'd10; 6'h37: s7_out = 4'd7;
            6'h38: s7_out = 4'd9;  6'h39: s7_out = 4'd5;  6'h3A: s7_out = 4'd0;  6'h3B: s7_out = 4'd15;
            6'h3C: s7_out = 4'd14; 6'h3D: s7_out = 4'd2;  6'h3E: s7_out = 4'd3;  6'h3F: s7_out = 4'd12;
        endcase
    end

    // S-BOX 8
    always @(*) begin
        case (addr8)
            6'h00: s8_out = 4'd13; 6'h01: s8_out = 4'd2;  6'h02: s8_out = 4'd8;  6'h03: s8_out = 4'd4;
            6'h04: s8_out = 4'd6;  6'h05: s8_out = 4'd15; 6'h06: s8_out = 4'd11; 6'h07: s8_out = 4'd1;
            6'h08: s8_out = 4'd10; 6'h09: s8_out = 4'd9;  6'h0A: s8_out = 4'd3;  6'h0B: s8_out = 4'd14;
            6'h0C: s8_out = 4'd5;  6'h0D: s8_out = 4'd0;  6'h0E: s8_out = 4'd12; 6'h0F: s8_out = 4'd7;
            
            6'h10: s8_out = 4'd1;  6'h11: s8_out = 4'd15; 6'h12: s8_out = 4'd13; 6'h13: s8_out = 4'd8;
            6'h14: s8_out = 4'd10; 6'h15: s8_out = 4'd3;  6'h16: s8_out = 4'd7;  6'h17: s8_out = 4'd4;
            6'h18: s8_out = 4'd12; 6'h19: s8_out = 4'd5;  6'h1A: s8_out = 4'd6;  6'h1B: s8_out = 4'd11;
            6'h1C: s8_out = 4'd0;  6'h1D: s8_out = 4'd14; 6'h1E: s8_out = 4'd9;  6'h1F: s8_out = 4'd2;
            
            6'h20: s8_out = 4'd7;  6'h21: s8_out = 4'd11; 6'h22: s8_out = 4'd4;  6'h23: s8_out = 4'd1;
            6'h24: s8_out = 4'd9;  6'h25: s8_out = 4'd12; 6'h26: s8_out = 4'd14; 6'h27: s8_out = 4'd2;
            6'h28: s8_out = 4'd0;  6'h29: s8_out = 4'd6;  6'h2A: s8_out = 4'd10; 6'h2B: s8_out = 4'd13;
            6'h2C: s8_out = 4'd15; 6'h2D: s8_out = 4'd3;  6'h2E: s8_out = 4'd5;  6'h2F: s8_out = 4'd8;
            
            6'h30: s8_out = 4'd2;  6'h31: s8_out = 4'd1;  6'h32: s8_out = 4'd14; 6'h33: s8_out = 4'd7;
            6'h34: s8_out = 4'd4;  6'h35: s8_out = 4'd10; 6'h36: s8_out = 4'd8;  6'h37: s8_out = 4'd13;
            6'h38: s8_out = 4'd15; 6'h39: s8_out = 4'd12; 6'h3A: s8_out = 4'd9;  6'h3B: s8_out = 4'd0;
            6'h3C: s8_out = 4'd3;  6'h3D: s8_out = 4'd5;  6'h3E: s8_out = 4'd6;  6'h3F: s8_out = 4'd11;
        endcase
    end

    // Ghep output
    assign S_out = {s1_out, s2_out, s3_out, s4_out, s5_out, s6_out, s7_out, s8_out};

endmodule