-- Modelling : ?
library IEEE;
use IEEE.STD_LOGIC_1164.all;      
use ieee.numeric_std.all;

entity priorityEncoder8to3 is
     port(
         a : in STD_LOGIC_VECTOR(7 downto 0);
         b : out STD_LOGIC_VECTOR(2 downto 0)
         );
end priorityEncoder8to3;


architecture func of priorityEncoder8to3 is
begin

     process (a) 
    begin
        if (a(7)='1') then
            b <= "111";
        elsif (a(6)='1') then
            b <= "110";
        elsif (a(5)='1') then
            b <= "101";
        elsif (a(4)='1') then
            b <= "100";
        elsif (a(3)='1') then
            b <= "011";
        elsif (a(2)='1') then
            b <= "010";
        elsif (a(1)='1') then
            b <= "001";
        elsif (a(0)='1') then
            b <= "000";
        end if;
    end process; 
end func;
    
