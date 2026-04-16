library verilog;
use verilog.vl_types.all;
entity system_rsp_xbar_demux_003 is
    port(
        sink_valid      : in     vl_logic_vector(0 downto 0);
        sink_data       : in     vl_logic_vector(87 downto 0);
        sink_channel    : in     vl_logic_vector(3 downto 0);
        sink_startofpacket: in     vl_logic;
        sink_endofpacket: in     vl_logic;
        sink_ready      : out    vl_logic;
        src0_valid      : out    vl_logic;
        src0_data       : out    vl_logic_vector(87 downto 0);
        src0_channel    : out    vl_logic_vector(3 downto 0);
        src0_startofpacket: out    vl_logic;
        src0_endofpacket: out    vl_logic;
        src0_ready      : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end system_rsp_xbar_demux_003;
