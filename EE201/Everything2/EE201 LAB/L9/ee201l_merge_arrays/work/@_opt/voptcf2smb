library verilog;
use verilog.vl_types.all;
entity CB4CE_HXILINX_merge_arrays_mcu is
    generic(
        TERMINAL_COUNT  : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi1, Hi1)
    );
    port(
        CEO             : out    vl_logic;
        Q0              : out    vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic;
        TC              : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        CLR             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TERMINAL_COUNT : constant is 1;
end CB4CE_HXILINX_merge_arrays_mcu;
