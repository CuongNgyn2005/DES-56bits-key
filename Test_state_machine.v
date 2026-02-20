`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2025 11:04:20 PM
// Design Name: 
// Module Name: Test_state_machine
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


module Test_state_machine( );

reg Clk, Reset;
    wire Select_mux_pc_temp, Select_mux_shift_temp;
    wire [4:0] Counter;
    wire Pre_state, Next_state;

    STATE_MACHINE uut (
        .Clk(Clk),
        .Reset(Reset),
        .Select_mux_pc_temp(Select_mux_pc_temp),
        .Select_mux_shift_temp(Select_mux_shift_temp),
        .Counter(Counter),
        .Pre_state(Pre_state),
        .Next_state(Next_state)
    );

    initial begin
        Clk = 0;
      Reset = 1'b1; 
      @(posedge Clk); 
      Reset = 1'b0; 
    end

    always #5 Clk = ~Clk; // Xung nh?p 100MHz (chu k? 10ns)

    initial begin
        $monitor("Time=%0t Counter=%0d Pre_state=%0b Next_state=%0b", $time, Counter, Pre_state, Next_state);
    end
endmodule
