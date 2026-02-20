library verilog;
use verilog.vl_types.all;
entity IP is
    port(
        Data_in         : in     vl_logic_vector(63 downto 0);
        Reset           : in     vl_logic;
        R0              : out    vl_logic_vector(31 downto 0);
        L0              : out    vl_logic_vector(31 downto 0)
    );
end IP;
