library verilog;
use verilog.vl_types.all;
entity XOR_FUNCTION is
    port(
        F_K             : in     vl_logic_vector(31 downto 0);
        L0              : in     vl_logic_vector(31 downto 0);
        \Out\           : out    vl_logic_vector(31 downto 0)
    );
end XOR_FUNCTION;
