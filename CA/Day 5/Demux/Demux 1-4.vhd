library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity demux1 is
 port(
 
 F : in STD_LOGIC;
 S: in STD_LOGIC_VECTOR(1 downto 0);
 A,B,C,D: out STD_LOGIC
 );
end demux1;
 
architecture func of demux1 is
begin
process (F,S) is
begin
 if (S="00") then
 A <= F;
 elsif (S="01") then
 B <= F;
 elsif (S="10") then
 C <= F;
 else
 D <= F;
 end if;
 
end process;
end func;
