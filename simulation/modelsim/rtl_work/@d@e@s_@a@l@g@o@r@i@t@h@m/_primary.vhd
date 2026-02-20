library verilog;
use verilog.vl_types.all;
entity DES_ALGORITHM is
    port(
        Plaintext       : in     vl_logic_vector(63 downto 0);
        Key_in          : in     vl_logic_vector(63 downto 0);
        Clk             : in     vl_logic;
        Clk_machine     : in     vl_logic;
        Reset           : in     vl_logic;
        Ln              : out    vl_logic_vector(31 downto 0);
        R_n             : out    vl_logic_vector(31 downto 0);
        Counter_machine : out    vl_logic_vector(4 downto 0);
        Counter_cycle   : out    vl_logic_vector(4 downto 0);
        Cirphertext     : out    vl_logic_vector(63 downto 0);
        Done            : out    vl_logic
    );
end DES_ALGORITHM;
