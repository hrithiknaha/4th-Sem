library ieee;
       use ieee.std_logic_1164.all;
       use ieee.std_logic_arith.all;
       use ieee.std_logic_unsigned.all;
       
       entity bitadder8 is
        
        port(
            a,b:in std_logic_vector(7 downto 0);
            sum:out std_logic_vector(7 downto 0);
            carry: out std_logic);
        end bitadder8;
architecture func of bitadder8 is
    signal result: std_logic_vector(8 downto 0);
    begin
        result<=('0'& a)+('0' & b);
        sum<=result(7 downto 0);
        carry<=result(8);
    end func;
            
