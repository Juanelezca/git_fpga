library verilog;
use verilog.vl_types.all;
entity ejercicio1_diagram_block is
    port(
        LED             : out    vl_logic;
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        LED8            : out    vl_logic
    );
end ejercicio1_diagram_block;
