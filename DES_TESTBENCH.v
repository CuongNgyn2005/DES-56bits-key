`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 04:55:24 PM
// Design Name: 
// Module Name: DES_TESTBENCH
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
module DES_TESTBENCH();
     // Inputs (Reg vi nam trong khoi initial/always)
    reg Clk;
    reg Reset_n;
    reg Start;
    reg [63:0] Plaintext;
    reg [63:0] Key_in;

    // Outputs (Wire)
    wire [63:0] Ciphertext;
    wire Done;
    DES_ALGORITHM uut (
        .Clk(Clk), 
        .Reset_n(Reset_n), 
        .Start(Start),           
        .Plaintext(Plaintext), 
        .Key_in(Key_in), 
        .Ciphertext(Ciphertext), 
        .Done(Done)
    );
       // 3. Tao xung Clock
		initial begin
        Clk = 0;
        // Tao chu ky clock 20ns (50MHz)
        forever #10 Clk = ~Clk;
		end
      // 4. Kịch bản chạy (Stimulus)
    initial begin
        // Reset hệ thống
        Reset_n = 0; 
        Start = 0;
        Plaintext = 64'h00123456789abcde; 
        Key_in    = 64'h0133457799bbcdff; 
        #100; // Chờ 100ns

        Reset_n = 1;
        #20;

        // Kích hoạt Start (BẮT BUỘC)
        Start = 1; 
        #20;       // Giữ Start trong 1 chu kỳ clock
        Start = 0;

        // Chờ tín hiệu Done
        wait(Done);
        #20;
        
        // Hiển thị kết quả
        $display("---------------------------------------");
        $display("Ciphertext: %h", Ciphertext);
        if(Ciphertext == 64'h1abff69d5a93e80b)
            $display("KET QUA: DUNG (PASSED)");
        else
            $display("KET QUA: SAI (FAILED)");
        $display("---------------------------------------");
        $stop;
    end
endmodule
