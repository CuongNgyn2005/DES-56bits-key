library verilog;
use verilog.vl_types.all;
entity SHIFT_LEFT_2 is
    port(
        C_in            : in     vl_logic_vector(27 downto 0);
        C_out           : out    vl_logic_vector(27 downto 0)
    );
end SHIFT_LEFT_2;
