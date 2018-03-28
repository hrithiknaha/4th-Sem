library ieee;
use ieee.std_logic_1164.all;

entity GraytoBinary is
port(   Binary : out std_logic_vector(3 downto 0);  
        Gray : in std_logic_vector(3 downto 0));
end GraytoBinary;

architecture func of GraytoBinary is 

begin
    process(Gray)
        begin
            Binary(3) <= Gray(3);
            Binary(2) <= Gray(3) xor Gray(2);
            Binary(1) <= Gray(3) xor Gray(2) xor Gray(1);
            Binary(0) <= Gray(3) xor Gray(2) xor Gray(1) xor Gray(0);
   end process;
end func;

