library ieee;
Use ieee. std_logic_1164.all;

entity sum is
port(
in_a,in_b,in_c,clk: in std_logic;
o_s,o_ca: out std_logic);
end sum;

architecture conducta of sum is
component D_FF
 port (D,clok: in std_logic;
 Q: out std_logic);
 end component;
 
 signal a,b,c,ca,s: std_logic;
 
 begin
  s <= a xor b xor c;
  ca <= (a and b) or (c and (a or b));
 
 D1: D_FF port map (in_a,clk,a);
 D2: D_FF port map (in_b,clk,b);
 D3: D_FF port map (in_c,clk,c);
 D4: D_FF port map (s,clk,o_s); 
 D5: D_FF port map (ca,clk,o_ca);
 end conducta;