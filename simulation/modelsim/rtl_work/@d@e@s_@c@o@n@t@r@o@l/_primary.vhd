library verilog;
use verilog.vl_types.all;
entity DES_CONTROL is
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Start           : in     vl_logic;
        Mux_sel         : out    vl_logic;
        Shift_sel       : out    vl_logic;
        Counter         : out    vl_logic_vector(3 downto 0);
        Pre_state       : out    vl_logic_vector(1 downto 0);
        Next_state      : out    vl_logic_vector(1 downto 0);
        Done            : out    vl_logic
    );
end DES_CONTROL;
