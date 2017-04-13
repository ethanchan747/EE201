library verilog;
use verilog.vl_types.all;
entity ee201_GCD is
    port(
        Clk             : in     vl_logic;
        CEN             : in     vl_logic;
        Reset           : in     vl_logic;
        Start           : in     vl_logic;
        Ack             : in     vl_logic;
        Ain             : in     vl_logic_vector(7 downto 0);
        Bin             : in     vl_logic_vector(7 downto 0);
        A               : out    vl_logic_vector(7 downto 0);
        B               : out    vl_logic_vector(7 downto 0);
        AB_GCD          : out    vl_logic_vector(7 downto 0);
        i_count         : out    vl_logic_vector(7 downto 0);
        q_I             : out    vl_logic;
        q_Sub           : out    vl_logic;
        q_Mult          : out    vl_logic;
        q_Done          : out    vl_logic
    );
end ee201_GCD;
