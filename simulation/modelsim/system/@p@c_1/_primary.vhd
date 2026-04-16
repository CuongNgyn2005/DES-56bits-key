library verilog;
use verilog.vl_types.all;
entity PC_1 is
    port(
        Des_key_in      : in     vl_logic_vector(63 downto 0);
        Reset           : in     vl_logic;
        C0              : out    vl_logic_vector(27 downto 0);
        D0              : out    vl_logic_vector(27 downto 0)
    );
end PC_1;
