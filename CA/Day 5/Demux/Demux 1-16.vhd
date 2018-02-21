library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity demux3 is
 port(
 
 Z : in STD_LOGIC;
 S: in STD_LOGIC_VECTOR(3 downto 0);
 A,B,C,D,E,F,G,H,i,j,K,L,M,N,O,P: out STD_LOGIC
 );
end demux3;
 
architecture func of demux3 is
begin
process (Z,S) is
begin
 if (S="0000") then
 A <= Z;
 elsif (S="0001") then
 B <= Z;
 elsif (S="0010") then
 C <= Z;
 elsif (S="0011") then
 D <= Z;
 elsif (S="0100") then
 E <= Z;
 elsif (S="0101") then
 F <= Z;
 elsif (S="0110") then
 G <= Z;
 elsif (S="0111") then
 H <= Z;
 elsif (S="1000") then
 I <= Z;
 elsif (S="1001") then
 J <= Z;
 elsif (S="1010") then
 K <= Z;
 elsif (S="1011") then
 L <= Z;
 elsif (S="1100") then
 M <= Z;
 elsif (S="1101") then
 N <= Z;
 elsif (S="1110") then
 O <= Z;
 elsif (S="1111") then
 P <= Z;
 
 end if;
 
end process;
end func;