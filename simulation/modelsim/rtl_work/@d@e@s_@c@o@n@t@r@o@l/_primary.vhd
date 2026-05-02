library verilog;
use verilog.vl_types.all;
entity DES_CONTROL is
    port(
        Clk             : in     vl_logic;
        Reset_n         : in     vl_logic;
        Start           : in     vl_logic;
        Mux_sel         : out    vl_logic;
        Reg_en          : out    vl_logic;
        Done            : out    vl_logic;
        Load_key        : out    vl_logic;
        Shift_en        : out    vl_logic;
        Counter         : out    vl_logic_vector(3 downto 0)
    );
end DES_CONTROL;
