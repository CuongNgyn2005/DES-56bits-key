library verilog;
use verilog.vl_types.all;
entity REGISTER_C0_D0 is
    port(
        C0              : in     vl_logic_vector(27 downto 0);
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        D0              : in     vl_logic_vector(27 downto 0);
        C0_out          : out    vl_logic_vector(27 downto 0);
        D0_out          : out    vl_logic_vector(27 downto 0)
    );
end REGISTER_C0_D0;
