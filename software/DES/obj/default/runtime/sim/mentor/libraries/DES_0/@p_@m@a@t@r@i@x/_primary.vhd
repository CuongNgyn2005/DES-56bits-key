library verilog;
use verilog.vl_types.all;
entity P_MATRIX is
    port(
        P_in            : in     vl_logic_vector(31 downto 0);
        P_out           : out    vl_logic_vector(31 downto 0)
    );
end P_MATRIX;
