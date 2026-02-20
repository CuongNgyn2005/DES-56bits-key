`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 10:00:05 AM
// Design Name: 
// Module Name: S_BOX
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


module S_BOX(S1_in,S2_in,S3_in,S4_in,S5_in,S6_in,S7_in,S8_in, S_out);
      input [5:0] S1_in,S2_in,S3_in,S4_in,S5_in,S6_in,S7_in,S8_in; 
      output reg [31:0] S_out; 
      // S BOX 1 
      always @(*) 
      begin
          case ({S1_in[5], S1_in[0]})
		2'b00: begin
			case (S1_in[4:1])
				4'd0:	S_out[31:28]	= 4'd14;
				4'd1:	S_out[31:28]	= 4'd4;
				4'd2:	S_out[31:28]	= 4'd13;
				4'd3:	S_out[31:28]	= 4'd1;
				4'd4:	S_out[31:28]	= 4'd2;
				4'd5:	S_out[31:28]	= 4'd15;
				4'd6:	S_out[31:28]	= 4'd11;
				4'd7:	S_out[31:28]	= 4'd8;
				4'd8:	S_out[31:28]	= 4'd3;
				4'd9:	S_out[31:28]	= 4'd10;
				4'd10:	S_out[31:28]	= 4'd6;
				4'd11:	S_out[31:28]	= 4'd12;
				4'd12:	S_out[31:28]	= 4'd5;
				4'd13:	S_out[31:28]	= 4'd9;
				4'd14:	S_out[31:28]	= 4'd0;
				default: S_out[31:28]	= 4'd7;
			endcase
		end
		2'b01: begin
			case (S1_in[4:1])
				4'd0:	S_out[31:28]	= 4'd0;
				4'd1:	S_out[31:28]	= 4'd15;
				4'd2:	S_out[31:28]	= 4'd7;
				4'd3:	S_out[31:28]	= 4'd4;
				4'd4:	S_out[31:28]	= 4'd14;
				4'd5:	S_out[31:28]	= 4'd2;
				4'd6:	S_out[31:28]	= 4'd13;
				4'd7:	S_out[31:28]	= 4'd1;
				4'd8:	S_out[31:28]	= 4'd10;
				4'd9:	S_out[31:28]	= 4'd6;
				4'd10:	S_out[31:28]	= 4'd12;
				4'd11:	S_out[31:28]	= 4'd11;
				4'd12:	S_out[31:28]	= 4'd9;
				4'd13:	S_out[31:28]	= 4'd5;
				4'd14:	S_out[31:28]	= 4'd3;
				default: S_out[31:28]	= 4'd8;
			endcase
		end
		2'b10: begin
			case (S1_in[4:1])
				4'd0:	S_out[31:28]	= 4'd4;
				4'd1:	S_out[31:28]	= 4'd1;
				4'd2:	S_out[31:28]	= 4'd14;
				4'd3:	S_out[31:28]	= 4'd8;
				4'd4:	S_out[31:28]	= 4'd13;
				4'd5:	S_out[31:28]	= 4'd6;
				4'd6:	S_out[31:28]	= 4'd2;
				4'd7:	S_out[31:28]	= 4'd11;
				4'd8:	S_out[31:28]	= 4'd15;
				4'd9:	S_out[31:28]	= 4'd12;
				4'd10:	S_out[31:28]	= 4'd9;
				4'd11:	S_out[31:28]	= 4'd7;
				4'd12:	S_out[31:28]	= 4'd3;
				4'd13:	S_out[31:28]	= 4'd10;
				4'd14:	S_out[31:28]	= 4'd5;
				default: S_out[31:28]	= 4'd0;
			endcase
		end
		default: begin
			case (S1_in[4:1])
				4'd0:	S_out[31:28]	= 4'd15;
				4'd1:	S_out[31:28]	= 4'd12;
				4'd2:	S_out[31:28]	= 4'd8;
				4'd3:	S_out[31:28]	= 4'd2;
				4'd4:	S_out[31:28]	= 4'd4;
				4'd5:	S_out[31:28]	= 4'd9;
				4'd6:	S_out[31:28]	= 4'd1;
				4'd7:	S_out[31:28]	= 4'd7;
				4'd8:	S_out[31:28]	= 4'd5;
				4'd9:	S_out[31:28]	= 4'd11;
				4'd10:	S_out[31:28]	= 4'd3;
				4'd11:	S_out[31:28]	= 4'd14;
				4'd12:	S_out[31:28]	= 4'd10;
				4'd13:	S_out[31:28]	= 4'd0;
				4'd14:	S_out[31:28]	= 4'd6;
				default: S_out[31:28]	= 4'd13;
			endcase
		end
	endcase
      end 
      // ----- -S BOX 2 ---------------------------
      always @ (*) begin
	case ({S2_in[5], S2_in[0]})
		2'b00: begin
			case (S2_in[4:1])
				4'd0:	S_out[27:24]	= 4'd15;
				4'd1:	S_out[27:24]	= 4'd1;
				4'd2:	S_out[27:24]	= 4'd8;
				4'd3:	S_out[27:24]	= 4'd14;
				4'd4:	S_out[27:24]	= 4'd6;
				4'd5:	S_out[27:24]	= 4'd11;
				4'd6:	S_out[27:24]	= 4'd3;
				4'd7:	S_out[27:24]	= 4'd4;
				4'd8:	S_out[27:24]	= 4'd9;
				4'd9:	S_out[27:24]	= 4'd7;
				4'd10:	S_out[27:24]	= 4'd2;
				4'd11:	S_out[27:24]	= 4'd13;
				4'd12:	S_out[27:24]	= 4'd12;
				4'd13:	S_out[27:24]	= 4'd0;
				4'd14:	S_out[27:24]	= 4'd5;
				default: S_out[27:24]	= 4'd10;
			endcase
		end
		2'b01: begin
			case (S2_in[4:1])
				4'd0:	S_out[27:24]	= 4'd3;
				4'd1:	S_out[27:24]	= 4'd13;
				4'd2:	S_out[27:24]	= 4'd4;
				4'd3:	S_out[27:24]	= 4'd7;
				4'd4:	S_out[27:24]	= 4'd15;
				4'd5:	S_out[27:24]	= 4'd2;
				4'd6:	S_out[27:24]	= 4'd8;
				4'd7:	S_out[27:24]	= 4'd14;
				4'd8:	S_out[27:24]	= 4'd12;
				4'd9:	S_out[27:24]	= 4'd0;
				4'd10:	S_out[27:24]	= 4'd1;
				4'd11:	S_out[27:24]	= 4'd10;
				4'd12:	S_out[27:24]	= 4'd6;
				4'd13:	S_out[27:24]	= 4'd9;
				4'd14:	S_out[27:24]	= 4'd11;
				default: S_out[27:24]	= 4'd5;
			endcase
		end
		2'b10: begin
			case (S2_in[4:1])
				4'd0:	S_out[27:24]	= 4'd0;
				4'd1:	S_out[27:24]	= 4'd14;
				4'd2:	S_out[27:24]	= 4'd7;
				4'd3:	S_out[27:24]	= 4'd11;
				4'd4:	S_out[27:24]	= 4'd10;
				4'd5:	S_out[27:24]	= 4'd4;
				4'd6:	S_out[27:24]	= 4'd13;
				4'd7:	S_out[27:24]	= 4'd1;
				4'd8:	S_out[27:24]	= 4'd5;
				4'd9:	S_out[27:24]	= 4'd8;
				4'd10:	S_out[27:24]	= 4'd12;
				4'd11:	S_out[27:24]	= 4'd6;
				4'd12:	S_out[27:24]	= 4'd9;
				4'd13:	S_out[27:24]	= 4'd3;
				4'd14:	S_out[27:24]	= 4'd2;
				default: S_out[27:24]	= 4'd15;
			endcase
		end
		default: begin
			case (S2_in[4:1])
				4'd0:	S_out[27:24]	= 4'd13;
				4'd1:	S_out[27:24]	= 4'd8;
				4'd2:	S_out[27:24]	= 4'd10;
				4'd3:	S_out[27:24]	= 4'd1;
				4'd4:	S_out[27:24]	= 4'd3;
				4'd5:	S_out[27:24]	= 4'd15;
				4'd6:	S_out[27:24]	= 4'd4;
				4'd7:	S_out[27:24]	= 4'd2;
				4'd8:	S_out[27:24]	= 4'd11;
				4'd9:	S_out[27:24]	= 4'd6;
				4'd10:	S_out[27:24]	= 4'd7;
				4'd11:	S_out[27:24]	= 4'd12;
				4'd12:	S_out[27:24]	= 4'd0;
				4'd13:	S_out[27:24]	= 4'd5;
				4'd14:	S_out[27:24]	= 4'd14;
				default:S_out[27:24]	= 4'd9;
			endcase
		end
	endcase
end
// ---------- S BOX 3 -------------------------
always @ (*) begin
	case ({S3_in[5], S3_in[0]})
		2'b00: begin
			case (S3_in[4:1])
				4'd0:	S_out[23:20]	= 4'd10;
				4'd1:	S_out[23:20]	= 4'd0;
				4'd2:	S_out[23:20]	= 4'd9;
				4'd3:	S_out[23:20]	= 4'd14;
				4'd4:	S_out[23:20]	= 4'd6;
				4'd5:	S_out[23:20]	= 4'd3;
				4'd6:	S_out[23:20]	= 4'd15;
				4'd7:	S_out[23:20]	= 4'd5;
				4'd8:	S_out[23:20]	= 4'd1;
				4'd9:	S_out[23:20]	= 4'd13;
				4'd10:	S_out[23:20]	= 4'd12;
				4'd11:	S_out[23:20]	= 4'd7;
				4'd12:	S_out[23:20]	= 4'd11;
				4'd13:	S_out[23:20]	= 4'd4;
				4'd14:	S_out[23:20]	= 4'd2;
				default: S_out[23:20]	= 4'd8;
			endcase
		end
		2'b01: begin
			case (S3_in[4:1])
				4'd0:	S_out[23:20]	= 4'd13;
				4'd1:	S_out[23:20]	= 4'd7;
				4'd2:	S_out[23:20]	= 4'd0;
				4'd3:	S_out[23:20]	= 4'd9;
				4'd4:	S_out[23:20]	= 4'd3;
				4'd5:	S_out[23:20]	= 4'd4;
				4'd6:	S_out[23:20]	= 4'd6;
				4'd7:	S_out[23:20]	= 4'd10;
				4'd8:	S_out[23:20]	= 4'd2;
				4'd9:	S_out[23:20]	= 4'd8;
				4'd10:	S_out[23:20]	= 4'd5;
				4'd11:	S_out[23:20]	= 4'd14;
				4'd12:	S_out[23:20]	= 4'd12;
				4'd13:	S_out[23:20]	= 4'd11;
				4'd14:	S_out[23:20]	= 4'd15;
				default: S_out[23:20]	= 4'd1;
			endcase
		end
		2'b10: begin
			case (S3_in[4:1])
				4'd0:	S_out[23:20]	= 4'd13;
				4'd1:	S_out[23:20]	= 4'd6;
				4'd2:	S_out[23:20]	= 4'd4;
				4'd3:	S_out[23:20]	= 4'd9;
				4'd4:	S_out[23:20]	= 4'd8;
				4'd5:	S_out[23:20]	= 4'd15;
				4'd6:	S_out[23:20]	= 4'd3;
				4'd7:	S_out[23:20]	= 4'd0;
				4'd8:	S_out[23:20]	= 4'd11;
				4'd9:	S_out[23:20]	= 4'd1;
				4'd10:	S_out[23:20]	= 4'd2;
				4'd11:	S_out[23:20]	= 4'd12;
				4'd12:	S_out[23:20]	= 4'd5;
				4'd13:	S_out[23:20]	= 4'd10;
				4'd14:	S_out[23:20]	= 4'd14;
				default: S_out[23:20]	= 4'd7;
			endcase
		end
		default: begin
			case (S3_in[4:1])
				4'd0:	S_out[23:20]	= 4'd1;
				4'd1:	S_out[23:20]	= 4'd10;
				4'd2:	S_out[23:20]	= 4'd13;
				4'd3:	S_out[23:20]	= 4'd0;
				4'd4:	S_out[23:20]	= 4'd6;
				4'd5:	S_out[23:20]	= 4'd9;
				4'd6:	S_out[23:20]	= 4'd8;
				4'd7:	S_out[23:20]	= 4'd7;
				4'd8:	S_out[23:20]	= 4'd4;
				4'd9:	S_out[23:20]	= 4'd15;
				4'd10:	S_out[23:20]	= 4'd14;
				4'd11:	S_out[23:20]	= 4'd3;
				4'd12:	S_out[23:20]	= 4'd11;
				4'd13:	S_out[23:20]	= 4'd5;
				4'd14:	S_out[23:20]	= 4'd2;
				default: S_out[23:20]	= 4'd12;
			endcase
		end
	endcase
end
/// ------ BOX 4 -------------------------
always @ (*) begin
	case ({S4_in[5], S4_in[0]})
		2'b00: begin
			case (S4_in[4:1])
				4'd0:	S_out[19:16]	= 4'd7;
				4'd1:	S_out[19:16]	= 4'd13;
				4'd2:	S_out[19:16]	= 4'd14;
				4'd3:	S_out[19:16]	= 4'd3;
				4'd4:	S_out[19:16]	= 4'd0;
				4'd5:	S_out[19:16]	= 4'd6;
				4'd6:	S_out[19:16]	= 4'd9;
				4'd7:	S_out[19:16]	= 4'd10;
				4'd8:	S_out[19:16]	= 4'd1;
				4'd9:	S_out[19:16]	= 4'd2;
				4'd10:	S_out[19:16]	= 4'd8;
				4'd11:	S_out[19:16]	= 4'd5;
				4'd12:	S_out[19:16]	= 4'd11;
				4'd13:	S_out[19:16]	= 4'd12;
				4'd14:	S_out[19:16]	= 4'd4;
				default: S_out[19:16]	= 4'd15;
			endcase
		end
		2'b01: begin
			case (S4_in[4:1])
				4'd0:	S_out[19:16]	= 4'd13;
				4'd1:	S_out[19:16]	= 4'd8;
				4'd2:	S_out[19:16]	= 4'd11;
				4'd3:	S_out[19:16]	= 4'd5;
				4'd4:	S_out[19:16]	= 4'd6;
				4'd5:	S_out[19:16]	= 4'd15;
				4'd6:	S_out[19:16]	= 4'd0;
				4'd7:	S_out[19:16]	= 4'd3;
				4'd8:	S_out[19:16]	= 4'd4;
				4'd9:	S_out[19:16]	= 4'd7;
				4'd10:	S_out[19:16]	= 4'd2;
				4'd11:	S_out[19:16]	= 4'd12;
				4'd12:	S_out[19:16]	= 4'd1;
				4'd13:	S_out[19:16]	= 4'd10;
				4'd14:	S_out[19:16]	= 4'd14;
				default: S_out[19:16]	= 4'd9;
			endcase
		end
		2'b10: begin
			case (S4_in[4:1])
				4'd0:	S_out[19:16]	= 4'd10;
				4'd1:	S_out[19:16]	= 4'd6;
				4'd2:	S_out[19:16]	= 4'd9;
				4'd3:	S_out[19:16]	= 4'd0;
				4'd4:	S_out[19:16]	= 4'd12;
				4'd5:	S_out[19:16]	= 4'd11;
				4'd6:	S_out[19:16]	= 4'd7;
				4'd7:	S_out[19:16]	= 4'd13;
				4'd8:	S_out[19:16]	= 4'd15;
				4'd9:	S_out[19:16]	= 4'd1;
				4'd10:	S_out[19:16]	= 4'd3;
				4'd11:	S_out[19:16]	= 4'd14;
				4'd12:	S_out[19:16]	= 4'd5;
				4'd13:	S_out[19:16]	= 4'd2;
				4'd14:	S_out[19:16]	= 4'd8;
				default: S_out[19:16]	= 4'd4;
			endcase
		end
		default: begin
			case (S4_in[4:1])
				4'd0:	S_out[19:16]	= 4'd3;
				4'd1:	S_out[19:16]	= 4'd15;
				4'd2:	S_out[19:16]	= 4'd0;
				4'd3:	S_out[19:16]	= 4'd6;
				4'd4:	S_out[19:16]	= 4'd10;
				4'd5:	S_out[19:16]	= 4'd1;
				4'd6:	S_out[19:16]	= 4'd13;
				4'd7:	S_out[19:16]	= 4'd8;
				4'd8:	S_out[19:16]	= 4'd9;
				4'd9:	S_out[19:16]	= 4'd4;
				4'd10:	S_out[19:16]	= 4'd5;
				4'd11:	S_out[19:16]	= 4'd11;
				4'd12:	S_out[19:16]	= 4'd12;
				4'd13:	S_out[19:16]	= 4'd7;
				4'd14:	S_out[19:16]	= 4'd2;
				default: S_out[19:16]	= 4'd14;
			endcase
		end
	endcase
end
/// -------------- BOX 5 -----------------------
always @ (*) begin
	case ({S5_in[5], S5_in[0]})
		2'b00: begin
			case (S5_in[4:1])
				4'd0:	S_out[15:12]	= 4'd2;
				4'd1:	S_out[15:12]	= 4'd12;
				4'd2:	S_out[15:12]	= 4'd4;
				4'd3:	S_out[15:12]	= 4'd1;
				4'd4:	S_out[15:12]	= 4'd7;
				4'd5:	S_out[15:12]	= 4'd10;
				4'd6:	S_out[15:12]	= 4'd11;
				4'd7:	S_out[15:12]	= 4'd6;
				4'd8:	S_out[15:12]	= 4'd8;
				4'd9:	S_out[15:12]	= 4'd5;
				4'd10:	S_out[15:12]	= 4'd3;
				4'd11:	S_out[15:12]	= 4'd15;
				4'd12:	S_out[15:12]	= 4'd13;
				4'd13:	S_out[15:12]	= 4'd0;
				4'd14:	S_out[15:12]	= 4'd14;
				default: S_out[15:12]	= 4'd9;
			endcase
		end
		2'b01: begin
			case (S5_in[4:1])
				4'd0:	S_out[15:12]	= 4'd14;
				4'd1:	S_out[15:12]	= 4'd11;
				4'd2:	S_out[15:12]	= 4'd2;
				4'd3:	S_out[15:12]	= 4'd12;
				4'd4:	S_out[15:12]	= 4'd4;
				4'd5:	S_out[15:12]	= 4'd7;
				4'd6:	S_out[15:12]	= 4'd13;
				4'd7:	S_out[15:12]	= 4'd1;
				4'd8:	S_out[15:12]	= 4'd5;
				4'd9:	S_out[15:12]	= 4'd0;
				4'd10:	S_out[15:12]	= 4'd15;
				4'd11:	S_out[15:12]	= 4'd10;
				4'd12:	S_out[15:12]	= 4'd3;
				4'd13:	S_out[15:12]	= 4'd9;
				4'd14:	S_out[15:12]	= 4'd8;
				default: S_out[15:12]	= 4'd6;
			endcase
		end
		2'b10: begin
			case (S5_in[4:1])
				4'd0:	S_out[15:12]	= 4'd4;
				4'd1:	S_out[15:12]	= 4'd2;
				4'd2:	S_out[15:12]	= 4'd1;
				4'd3:	S_out[15:12]	= 4'd11;
				4'd4:	S_out[15:12]	= 4'd10;
				4'd5:	S_out[15:12]	= 4'd13;
				4'd6:	S_out[15:12]	= 4'd7;
				4'd7:	S_out[15:12]	= 4'd8;
				4'd8:	S_out[15:12]	= 4'd15;
				4'd9:	S_out[15:12]	= 4'd9;
				4'd10:	S_out[15:12]	= 4'd12;
				4'd11:	S_out[15:12]	= 4'd5;
				4'd12:	S_out[15:12]	= 4'd6;
				4'd13:	S_out[15:12]	= 4'd3;
				4'd14:	S_out[15:12]	= 4'd0;
				default: S_out[15:12]	= 4'd14;
			endcase
		end
		default: begin
			case (S5_in[4:1])
				4'd0:	S_out[15:12]	= 4'd11;
				4'd1:	S_out[15:12]	= 4'd8;
				4'd2:	S_out[15:12]	= 4'd12;
				4'd3:	S_out[15:12]	= 4'd7;
				4'd4:	S_out[15:12]	= 4'd1;
				4'd5:	S_out[15:12]	= 4'd14;
				4'd6:	S_out[15:12]	= 4'd2;
				4'd7:	S_out[15:12]	= 4'd13;
				4'd8:	S_out[15:12]	= 4'd6;
				4'd9:	S_out[15:12]	= 4'd15;
				4'd10:	S_out[15:12]	= 4'd0;
				4'd11:	S_out[15:12]	= 4'd9;
				4'd12:	S_out[15:12]	= 4'd10;
				4'd13:	S_out[15:12]	= 4'd4;
				4'd14:	S_out[15:12]	= 4'd5;
				default: S_out[15:12]	= 4'd3;
			endcase
		end
	endcase
end
// ------------- box 6 ------------------------
always @ (*) begin
	case ({S6_in[5], S6_in[0]})
		2'b00: begin
			case (S6_in[4:1])
				4'd0:	S_out[11:8]	= 4'd12;
				4'd1:	S_out[11:8]	= 4'd1;
				4'd2:	S_out[11:8]	= 4'd10;
				4'd3:	S_out[11:8]	= 4'd15;
				4'd4:	S_out[11:8]	= 4'd9;
				4'd5:	S_out[11:8]	= 4'd2;
				4'd6:	S_out[11:8]	= 4'd6;
				4'd7:	S_out[11:8]	= 4'd8;
				4'd8:	S_out[11:8]	= 4'd0;
				4'd9:	S_out[11:8]	= 4'd13;
				4'd10:	S_out[11:8]	= 4'd3;
				4'd11:	S_out[11:8]	= 4'd4;
				4'd12:	S_out[11:8]	= 4'd14;
				4'd13:	S_out[11:8]	= 4'd7;
				4'd14:	S_out[11:8]	= 4'd5;
				default: S_out[11:8]	= 4'd11;
			endcase
		end
		2'b01: begin
			case (S6_in[4:1])
				4'd0:	S_out[11:8]	= 4'd10;
				4'd1:	S_out[11:8]	= 4'd15;
				4'd2:	S_out[11:8]	= 4'd4;
				4'd3:	S_out[11:8]	= 4'd2;
				4'd4:	S_out[11:8]	= 4'd7;
				4'd5:	S_out[11:8]	= 4'd12;
				4'd6:	S_out[11:8]	= 4'd9;
				4'd7:	S_out[11:8]	= 4'd5;
				4'd8:	S_out[11:8]	= 4'd6;
				4'd9:	S_out[11:8]	= 4'd1;
				4'd10:	S_out[11:8]	= 4'd13;
				4'd11:	S_out[11:8]	= 4'd14;
				4'd12:	S_out[11:8]	= 4'd0;
				4'd13:	S_out[11:8]	= 4'd11;
				4'd14:	S_out[11:8]	= 4'd3;
				default: S_out[11:8]	= 4'd8;
			endcase
		end
		2'b10: begin
			case (S6_in[4:1])
				4'd0:	S_out[11:8]	= 4'd9;
				4'd1:	S_out[11:8]	= 4'd14;
				4'd2:	S_out[11:8]	= 4'd15;
				4'd3:	S_out[11:8]	= 4'd5;
				4'd4:	S_out[11:8]	= 4'd2;
				4'd5:	S_out[11:8]	= 4'd8;
				4'd6:	S_out[11:8]	= 4'd12;
				4'd7:	S_out[11:8]	= 4'd3;
				4'd8:	S_out[11:8]	= 4'd7;
				4'd9:	S_out[11:8]	= 4'd0;
				4'd10:	S_out[11:8]	= 4'd4;
				4'd11:	S_out[11:8]	= 4'd10;
				4'd12:	S_out[11:8]	= 4'd1;
				4'd13:	S_out[11:8]	= 4'd13;
				4'd14:	S_out[11:8]	= 4'd11;
				default: S_out[11:8]	= 4'd6;
			endcase
		end
		default: begin
			case (S6_in[4:1])
				4'd0:	S_out[11:8]	= 4'd4;
				4'd1:	S_out[11:8]	= 4'd3;
				4'd2:	S_out[11:8]	= 4'd2;
				4'd3:	S_out[11:8]	= 4'd12;
				4'd4:	S_out[11:8]	= 4'd9;
				4'd5:	S_out[11:8]	= 4'd5;
				4'd6:	S_out[11:8]	= 4'd15;
				4'd7:	S_out[11:8]	= 4'd10;
				4'd8:	S_out[11:8]	= 4'd11;
				4'd9:	S_out[11:8]	= 4'd14;
				4'd10:	S_out[11:8]	= 4'd1;
				4'd11:	S_out[11:8]	= 4'd7;
				4'd12:	S_out[11:8]	= 4'd6;
				4'd13:	S_out[11:8]	= 4'd0;
				4'd14:	S_out[11:8]	= 4'd8;
				default: S_out[11:8]	= 4'd13;
			endcase
		end
	endcase
end
always @ (*) begin
	case ({S7_in[5], S7_in[0]})
		2'b00: begin
			case (S7_in[4:1])
				4'd0:	S_out[7:4]	= 4'd4;
				4'd1:	S_out[7:4]	= 4'd11;
				4'd2:	S_out[7:4]	= 4'd2;
				4'd3:	S_out[7:4]	= 4'd14;
				4'd4:	S_out[7:4]	= 4'd15;
				4'd5:	S_out[7:4]	= 4'd0;
				4'd6:	S_out[7:4]	= 4'd8;
				4'd7:	S_out[7:4]	= 4'd13;
				4'd8:	S_out[7:4]	= 4'd3;
				4'd9:	S_out[7:4]	= 4'd12;
				4'd10:	S_out[7:4]	= 4'd9;
				4'd11:	S_out[7:4]	= 4'd7;
				4'd12:	S_out[7:4]	= 4'd5;
				4'd13:	S_out[7:4]	= 4'd10;
				4'd14:	S_out[7:4]	= 4'd6;
				default: S_out[7:4]	= 4'd1;
			endcase
		end
		2'b01: begin
			case (S7_in[4:1])
				4'd0:	S_out[7:4]	= 4'd13;
				4'd1:	S_out[7:4]	= 4'd0;
				4'd2:	S_out[7:4]	= 4'd11;
				4'd3:	S_out[7:4]	= 4'd7;
				4'd4:	S_out[7:4]	= 4'd4;
				4'd5:	S_out[7:4]	= 4'd9;
				4'd6:	S_out[7:4]	= 4'd1;
				4'd7:	S_out[7:4]	= 4'd10;
				4'd8:	S_out[7:4]	= 4'd14;
				4'd9:	S_out[7:4]	= 4'd3;
				4'd10:	S_out[7:4]	= 4'd5;
				4'd11:	S_out[7:4]	= 4'd12;
				4'd12:	S_out[7:4]	= 4'd2;
				4'd13:	S_out[7:4]	= 4'd15;
				4'd14:	S_out[7:4]	= 4'd8;
				default: S_out[7:4]	= 4'd6;
			endcase
		end
		2'b10: begin
			case (S7_in[4:1])
				4'd0:	S_out[7:4]	= 4'd1;
				4'd1:	S_out[7:4]	= 4'd4;
				4'd2:	S_out[7:4]	= 4'd11;
				4'd3:	S_out[7:4]	= 4'd13;
				4'd4:	S_out[7:4]	= 4'd12;
				4'd5:	S_out[7:4]	= 4'd3;
				4'd6:	S_out[7:4]	= 4'd7;
				4'd7:	S_out[7:4]	= 4'd14;
				4'd8:	S_out[7:4]	= 4'd10;
				4'd9:	S_out[7:4]	= 4'd15;
				4'd10:	S_out[7:4]	= 4'd6;
				4'd11:	S_out[7:4]	= 4'd8;
				4'd12:	S_out[7:4]	= 4'd0;
				4'd13:	S_out[7:4]	= 4'd5;
				4'd14:	S_out[7:4]	= 4'd9;
				default: S_out[7:4]	= 4'd2;
			endcase
		end
		default: begin
			case (S7_in[4:1])
				4'd0:	S_out[7:4]	= 4'd6;
				4'd1:	S_out[7:4]	= 4'd11;
				4'd2:	S_out[7:4]	= 4'd13;
				4'd3:	S_out[7:4]	= 4'd8;
				4'd4:	S_out[7:4]	= 4'd1;
				4'd5:	S_out[7:4]	= 4'd4;
				4'd6:	S_out[7:4]	= 4'd10;
				4'd7:	S_out[7:4]	= 4'd7;
				4'd8:	S_out[7:4]	= 4'd9;
				4'd9:	S_out[7:4]	= 4'd5;
				4'd10:	S_out[7:4]	= 4'd0;
				4'd11:	S_out[7:4]	= 4'd15;
				4'd12:	S_out[7:4]	= 4'd14;
				4'd13:	S_out[7:4]	= 4'd2;
				4'd14:	S_out[7:4]	= 4'd3;
				default: S_out[7:4]	= 4'd12;
			endcase
		end
	endcase
end
 ///--------------- BOX 8 ---------------------
 always @ (*) begin
	case ({S8_in[5], S8_in[0]})
		2'b00: begin
			case (S8_in[4:1])
				4'd0:	 S_out[3:0]	= 4'd13;
				4'd1:	 S_out[3:0]	= 4'd2;
				4'd2:	 S_out[3:0]	= 4'd8;
				4'd3:	 S_out[3:0]	= 4'd4;
				4'd4:	 S_out[3:0]	= 4'd6;
				4'd5:	 S_out[3:0]	= 4'd15;
				4'd6:	 S_out[3:0]	= 4'd11;
				4'd7:	 S_out[3:0]	= 4'd1;
				4'd8:	 S_out[3:0]	= 4'd10;
				4'd9:	 S_out[3:0]	= 4'd9;
				4'd10:	 S_out[3:0]	= 4'd3;
				4'd11:	 S_out[3:0]	= 4'd14;
				4'd12:	 S_out[3:0]	= 4'd5;
				4'd13:	 S_out[3:0]	= 4'd0;
				4'd14:	 S_out[3:0]	= 4'd12;
				default:  S_out[3:0]	= 4'd7;
			endcase
		end
		2'b01: begin
			case (S8_in[4:1])
				4'd0:	 S_out[3:0]	= 4'd1;
				4'd1:	 S_out[3:0]	= 4'd15;
				4'd2:	 S_out[3:0]	= 4'd13;
				4'd3:	 S_out[3:0]	= 4'd8;
				4'd4:	 S_out[3:0]	= 4'd10;
				4'd5:	 S_out[3:0]	= 4'd3;
				4'd6:	 S_out[3:0]	= 4'd7;
				4'd7:	 S_out[3:0]	= 4'd4;
				4'd8:	 S_out[3:0]	= 4'd12;
				4'd9:	 S_out[3:0]	= 4'd5;
				4'd10:	 S_out[3:0]	= 4'd6;
				4'd11:	 S_out[3:0]	= 4'd11;
				4'd12:	 S_out[3:0]	= 4'd0;
				4'd13:	 S_out[3:0]	= 4'd14;
				4'd14:	 S_out[3:0]	= 4'd9;
				default:  S_out[3:0]	= 4'd2;
			endcase
		end
		2'b10: begin
			case (S8_in[4:1])
				4'd0:	 S_out[3:0]	= 4'd7;
				4'd1:	 S_out[3:0]	= 4'd11;
				4'd2:	 S_out[3:0]	= 4'd4;
				4'd3:	 S_out[3:0]	= 4'd1;
				4'd4:	 S_out[3:0]	= 4'd9;
				4'd5:	 S_out[3:0]	= 4'd12;
				4'd6:	 S_out[3:0]	= 4'd14;
				4'd7:	 S_out[3:0]	= 4'd2;
				4'd8:	 S_out[3:0]	= 4'd0;
				4'd9:	 S_out[3:0]	= 4'd6;
				4'd10:	 S_out[3:0]	= 4'd10;
				4'd11:	 S_out[3:0]	= 4'd13;
				4'd12:	 S_out[3:0]	= 4'd15;
				4'd13:	 S_out[3:0]	= 4'd3;
				4'd14:	 S_out[3:0]	= 4'd5;
				default:  S_out[3:0]	= 4'd8;
			endcase
		end
		default: begin
			case (S8_in[4:1])
				4'd0:	 S_out[3:0]	= 4'd2;
				4'd1:	 S_out[3:0]	= 4'd1;
				4'd2:	 S_out[3:0]	= 4'd14;
				4'd3:	 S_out[3:0]	= 4'd7;
				4'd4:	 S_out[3:0]	= 4'd4;
				4'd5:	 S_out[3:0]	= 4'd10;
				4'd6:	 S_out[3:0]	= 4'd8;
				4'd7:	 S_out[3:0]	= 4'd13;
				4'd8:	 S_out[3:0]	= 4'd15;
				4'd9:	 S_out[3:0]	= 4'd12;
				4'd10:	 S_out[3:0]	= 4'd9;
				4'd11:	 S_out[3:0]	= 4'd0;
				4'd12:	 S_out[3:0]	= 4'd3;
				4'd13:	 S_out[3:0]	= 4'd5;
				4'd14:	 S_out[3:0]	= 4'd6;
				default:  S_out[3:0]	= 4'd11;
			endcase
		end
	endcase
end
endmodule
