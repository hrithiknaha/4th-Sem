library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity decoder3 is
 port(
 a : in std_logic_vector(3 downto 0);
 b : out std_logic_vector(15 downto 0)
 );
end decoder3;
 
architecture func of decoder3 is
begin
 
process(a)
begin
 if (a="0000") then
 b <= "0000000000000001";
 elsif (a="0001") then
 b <= "0000000000000010";
 elsif (a="0010") then
 b <= "0000000000000100";
 elsif (a="0011") then
 b <= "0000000000001000";
 elsif (a="0100") then
 b <= "0000000000010000";
 elsif (a="0101") then
 b <= "0000000000100000";
 elsif (a="0110") then
 b <= "0000000001000000";
 elsif (a="0111") then
 b <= "0000000010000000"; 
 elsif (a="1000") then
 b <= "0000000100000000";
 elsif (a="1001") then
 b <= "0000001000000000";
 elsif (a="1010") then
 b <= "0000010000000000";
 elsif (a="1011") then
 b <= "0000100000000000";
 elsif (a="1100") then
 b <= "0001000000000000";
 elsif (a="1101") then
 b <= "0010000000000000";
 elsif (a="1110") then
 b <= "0100000000000000";
 else
 b <= "1000000000000000";
 end if;
end process;
 
end func;
