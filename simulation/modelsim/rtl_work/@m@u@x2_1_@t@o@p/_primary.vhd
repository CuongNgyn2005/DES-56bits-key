library verilog;
use verilog.vl_types.all;
entity MUX2_1_TOP is
    port(
        In_a            : in     vl_logic_vector(31 downto 0);
        \Select\        : in     vl_logic;
        In_b            : in     vl_logic_vector(31 downto 0);
        \Out\           : out    vl_logic_vector(31 downto 0)
    );
end MUX2_1_TOP;
