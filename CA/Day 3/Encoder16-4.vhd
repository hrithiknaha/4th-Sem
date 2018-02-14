library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity encoder3 is
 port(
 a : in STD_LOGIC_VECTOR(15 downto 0);
 b : out STD_LOGIC_VECTOR(3 downto 0)
 );
end encoder3;
 
architecture func of encoder3 is
begin
 
process(a)
begin
 if (a="0000000000000001") then
 b <= "0000";
 elsif (a="0000000000000010") then
 b <= "0001";
 elsif (a="0000000000000100") then
 b <= "0010";
 elsif (a="0000000000001000") then
 b <= "0011";
 elsif (a="0000000000010000") then
 b <= "0100";
 elsif (a="0000000000100000") then
 b <= "0101";
 elsif (a="0000000001000000") then
 b <= "0110";
 elsif (a="0000000010000000") then
 b <= "0111";
 elsif (a="0000000100000000") then
 b <= "1000";
 elsif (a="0000001000000000") then
 b <= "1001";
 elsif (a="0000010000000000") then
 b <= "1010";
 elsif (a="0000100000000000") then
 b <= "1011";
 elsif (a="0001000000000000") then
 b <= "1100";
 elsif (a="0010000000000000") then
 b <= "1101";
 elsif (a="0100000000000000") then
 b <= "1110";
 elsif (a="1000000000000000") then
 b <= "1111";
-- else
 --b <= "ZZ";
 end if;
end process;
 
end func;
