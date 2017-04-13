library verilog;
use verilog.vl_types.all;
entity u_program_memory is
    port(
        addr            : in     vl_logic_vector(2 downto 0);
        branch          : out    vl_logic_vector(2 downto 0);
        done            : out    vl_logic;
        csel            : out    vl_logic_vector(2 downto 0);
        inc_I           : out    vl_logic;
        inc_J           : out    vl_logic;
        inc_K           : out    vl_logic;
        clear           : out    vl_logic;
        select_q        : out    vl_logic;
        write_EN        : out    vl_logic
    );
end u_program_memory;
