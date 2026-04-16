library verilog;
use verilog.vl_types.all;
entity DE2_TOP is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(0 downto 0)
    );
end DE2_TOP;
