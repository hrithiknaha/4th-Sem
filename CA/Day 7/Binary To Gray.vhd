library ieee;
use ieee.std_logic_1164.all;

entity Binarytogray is
port(   Binary : in std_logic_vector(3 downto 0);  
        Gray : out std_logic_vector(3 downto 0));
end Binarytogray;

architecture func of Binarytogray is 

begin
Gray(3) <= Binary(3);
Gray(2) <= Binary(3) xor Binary(2);
Gray(1) <= Binary(2) xor Binary(1);
Gray(0) <= Binary(1) xor Binary(0);

end func;
