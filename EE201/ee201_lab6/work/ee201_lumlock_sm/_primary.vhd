library verilog;
use verilog.vl_types.all;
entity ee201_lumlock_sm is
    port(
        Clk             : in     vl_logic;
        reset           : in     vl_logic;
        U               : in     vl_logic;
        Z               : in     vl_logic;
        Unlock          : out    vl_logic;
        q_bad           : out    vl_logic;
        q_opening       : out    vl_logic;
        q_g1011         : out    vl_logic;
        q_g1011get      : out    vl_logic;
        q_g101          : out    vl_logic;
        q_g101get       : out    vl_logic;
        q_g10           : out    vl_logic;
        q_g10get        : out    vl_logic;
        q_g1            : out    vl_logic;
        q_g1get         : out    vl_logic;
        q_initial       : out    vl_logic
    );
end ee201_lumlock_sm;
