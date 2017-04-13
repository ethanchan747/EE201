library verilog;
use verilog.vl_types.all;
entity counter_3bit is
    generic(
        WIDTH           : integer := 3
    );
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        COUNT_EN        : in     vl_logic;
        LOAD_EN         : in     vl_logic;
        LOAD_DATA       : in     vl_logic_vector;
        Q_OUT           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end counter_3bit;
