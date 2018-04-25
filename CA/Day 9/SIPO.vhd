library ieee;
   use ieee.std_logic_1164.all;
entity sipo is
 port(
 clk, clear : in std_logic;
 Input_Data: in std_logic;
 Q: inout std_logic_vector(3 downto 0) );
end sipo;
 
architecture func of sipo is
 
begin
 
 process (clk)
 begin
 if clear = '1' then
 Q <= "0000";
 elsif (CLK'event and CLK='1') then
 Q(3 downto 1) <= Q(2 downto 0);
 Q(0) <= Input_Data;
 end if;
 end process;
end func;
