library verilog;
use verilog.vl_types.all;
entity S_BOX is
    port(
        S1_in           : in     vl_logic_vector(5 downto 0);
        S2_in           : in     vl_logic_vector(5 downto 0);
        S3_in           : in     vl_logic_vector(5 downto 0);
        S4_in           : in     vl_logic_vector(5 downto 0);
        S5_in           : in     vl_logic_vector(5 downto 0);
        S6_in           : in     vl_logic_vector(5 downto 0);
        S7_in           : in     vl_logic_vector(5 downto 0);
        S8_in           : in     vl_logic_vector(5 downto 0);
        S_out           : out    vl_logic_vector(31 downto 0)
    );
end S_BOX;
