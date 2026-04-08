`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2025 11:21:10 AM
// Design Name: 
// Module Name: STATE_MACHINE
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


module DES_CONTROL(Clk, 
                     Reset,
							Start,
                     Mux_sel,
							Shift_sel,
                     Counter,
                     Pre_state,
                     Next_state, Done);

  input Clk, Reset;
  input Start; 
  output reg Mux_sel,Shift_sel; 
  output reg [3:0] Counter;
  output reg Done; 
  localparam S_IDLE = 2'b00;
  localparam S_PROCESS = 2'b01;
  localparam S_DONE = 2'b10; 
  output   reg[1:0] Pre_state , Next_state;
	//==============================Chuyển trạng thái tuân theo Clock===============
	always@(posedge Clk or posedge Reset) begin
		if(Reset)
		Pre_state <= S_IDLE;
		else
		Pre_state <= Next_state;
	end
	//============================Logic chuyển trạng thái================
	always@(*)begin
		case(Pre_state)
			S_IDLE: begin
				if(Start) Next_state = S_PROCESS;
				else		 Next_state = S_IDLE;
				end
			S_PROCESS: begin
				if(Counter == 15) Next_state = S_DONE;
				else 					  Next_state = S_PROCESS;
				end
			S_DONE: begin
				Next_state = S_IDLE;
				end
		endcase
	end
	//===========================Bộ đếm vòng=======================
	always@(posedge Clk or posedge Reset) begin
		if (Reset) 
            Counter <= 0;
        else if (Pre_state == S_IDLE)
            Counter <= 0;
        else if (Pre_state == S_PROCESS)
            Counter <= Counter + 1;
   end
	//==========================Logic điều khiển ngõ ra==============
	always @(*) begin
        // Mặc định
        Done = 0;
        Mux_sel = 1; // Mặc định chọn Feedback loop
        Shift_sel = 1; // Mặc định shift 2
        
        case (Pre_state)
            S_IDLE: begin
                Mux_sel = 0; // Ở trạng thái chờ, chuẩn bị nhận dữ liệu mới (Init)
            end

            S_PROCESS: begin
                Mux_sel = 1; // Trong khi chạy, lấy dữ liệu từ vòng trước
                
                // Quy luật dịch bit DES: Vòng 1, 2, 9, 16 (tương ứng index 0, 1, 8, 15) là dịch 1
                if (Counter == 0 || Counter == 1 || Counter == 8 || Counter == 15)
                    Shift_sel = 0; // 1 bit
                else
                    Shift_sel = 1; // 2 bits
            end

            S_DONE: begin
                Done = 1;
                Mux_sel = 0;
            end
        endcase
    end
endmodule
