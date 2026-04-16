library verilog;
use verilog.vl_types.all;
entity PC_2 is
    port(
        \In\            : in     vl_logic_vector(55 downto 0);
        Round_key       : out    vl_logic_vector(47 downto 0)
    );
end PC_2;
