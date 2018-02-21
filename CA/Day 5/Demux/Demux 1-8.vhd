
library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity demux2 is
 port(
 
 Z : in STD_LOGIC;
 S: in STD_LOGIC_VECTOR(2 downto 0);
 A,B,C,D,E,F,G,H: out STD_LOGIC
 );
end demux2;
 
architecture func of demux2 is
begin
process (Z,S) is
begin
 if (S="000") then
 A <= Z;
 elsif (S="001") then
 B <= Z;
 elsif (S="010") then
 C <= Z;
 elsif (S="011") then
 D <= Z;
 elsif (S="100") then
 E <= Z;
 elsif (S="101") then
 F <= Z;
 elsif (S="110") then
 G <= Z;
 elsif (S="111") then
 H <= Z;
 
 end if;
 
end process;
end func;