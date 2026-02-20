library verilog;
use verilog.vl_types.all;
entity STATE_MACHINE is
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Select_mux_pc_temp: out    vl_logic;
        Select_mux_shift_temp: out    vl_logic;
        Counter         : out    vl_logic_vector(4 downto 0);
        Pre_state       : out    vl_logic;
        Next_state      : out    vl_logic;
        Done            : out    vl_logic
    );
end STATE_MACHINE;
