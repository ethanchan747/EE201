library verilog;
use verilog.vl_types.all;
entity array_Q_ROM is
    port(
        J               : in     vl_logic_vector(1 downto 0);
        DOUT            : out    vl_logic_vector(3 downto 0)
    );
end array_Q_ROM;
