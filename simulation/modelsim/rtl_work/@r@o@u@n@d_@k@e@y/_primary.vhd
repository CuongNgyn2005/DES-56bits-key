library verilog;
use verilog.vl_types.all;
entity ROUND_KEY is
    port(
        Clk             : in     vl_logic;
        Reset_n         : in     vl_logic;
        Key_in          : in     vl_logic_vector(63 downto 0);
        Load_key        : in     vl_logic;
        Shift_en        : in     vl_logic;
        Round_idx       : in     vl_logic_vector(3 downto 0);
        Subkey_out      : out    vl_logic_vector(47 downto 0)
    );
end ROUND_KEY;
