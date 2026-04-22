library verilog;
use verilog.vl_types.all;
entity DES_ALGORITHM is
    port(
        Clk             : in     vl_logic;
        Reset_n         : in     vl_logic;
        Start           : in     vl_logic;
        Plaintext       : in     vl_logic_vector(63 downto 0);
        Key_in          : in     vl_logic_vector(63 downto 0);
        Ciphertext      : out    vl_logic_vector(63 downto 0);
        Done            : out    vl_logic
    );
end DES_ALGORITHM;
