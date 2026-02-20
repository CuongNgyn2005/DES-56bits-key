library verilog;
use verilog.vl_types.all;
entity E_MATRIX is
    port(
        R               : in     vl_logic_vector(31 downto 0);
        E_OUT           : out    vl_logic_vector(47 downto 0)
    );
end E_MATRIX;
