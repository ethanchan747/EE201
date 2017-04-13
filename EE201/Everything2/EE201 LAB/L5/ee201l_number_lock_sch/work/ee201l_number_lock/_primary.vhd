library verilog;
use verilog.vl_types.all;
entity ee201l_number_lock is
    port(
        reset           : in     vl_logic;
        sysclk          : in     vl_logic;
        u               : in     vl_logic;
        z               : in     vl_logic;
        state           : out    vl_logic_vector(10 downto 0)
    );
end ee201l_number_lock;
