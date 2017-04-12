library verilog;
use verilog.vl_types.all;
entity ee201l_detour is
    port(
        CLK             : in     vl_logic;
        LR_BAR          : in     vl_logic;
        RESET           : in     vl_logic;
        GL              : out    vl_logic;
        GR              : out    vl_logic;
        G1              : out    vl_logic;
        G2              : out    vl_logic;
        I               : out    vl_logic;
        L               : out    vl_logic;
        L1              : out    vl_logic;
        L12             : out    vl_logic;
        L123            : out    vl_logic;
        R               : out    vl_logic;
        R1              : out    vl_logic;
        R12             : out    vl_logic;
        R123            : out    vl_logic
    );
end ee201l_detour;
