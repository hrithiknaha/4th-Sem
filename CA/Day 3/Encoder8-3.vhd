library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity encoder2 is
 port(
 a : in STD_LOGIC_VECTOR(7 downto 0);
 b : out STD_LOGIC_VECTOR(2 downto 0)
 );
end encoder2;
 
architecture func of encoder2 is
begin
 
process(a)
begin
 if (a="00000001") then
 b <= "000";
 elsif (a="00000010") then
 b <= "001";
 elsif (a="00000100") then
 b <= "010";
 elsif (a="00001000") then
 b <= "011";
 elsif (a="00010000") then
 b <= "100";
 elsif (a="00100000") then
 b <= "101";
 elsif (a="01000000") then
 b <= "110";
 elsif (a="10000000") then
 b <= "111";
-- else
 --b <= "ZZ";
 end if;
end process;
 
end func;
