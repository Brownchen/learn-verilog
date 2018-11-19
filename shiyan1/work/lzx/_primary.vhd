library verilog;
use verilog.vl_types.all;
entity lzx is
    port(
        ckey            : in     vl_logic_vector(4 downto 1);
        seg             : out    vl_logic_vector(6 downto 0);
        dig             : out    vl_logic_vector(7 downto 0)
    );
end lzx;
