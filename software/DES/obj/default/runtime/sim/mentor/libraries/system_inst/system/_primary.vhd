library verilog;
use verilog.vl_types.all;
entity system is
    port(
        clk_clk         : in     vl_logic;
        reset_reset_n   : in     vl_logic
    );
end system;
