library verilog;
use verilog.vl_types.all;
entity ROUND_KEY is
    port(
        Key_in          : in     vl_logic_vector(63 downto 0);
        Clk             : in     vl_logic;
        Clk2            : in     vl_logic;
        Reset           : in     vl_logic;
        Key_out         : out    vl_logic_vector(47 downto 0);
        Done            : out    vl_logic;
        Counter         : out    vl_logic_vector(4 downto 0)
    );
end ROUND_KEY;
