library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity decoder1 is
 port(
 a : in std_logic_vector(1 downto 0);
 b : out std_logic_vector(3 downto 0)
 );
end decoder1;
 
architecture func of decoder1 is
begin
 
process(a)
begin
 if (a="00") then
 b <= "0001";
 elsif (a="01") then
 b <= "0010";
 elsif (a="10") then
 b <= "0100";
 else
 b <= "1000";
 end if;
end process;
 
end func;
