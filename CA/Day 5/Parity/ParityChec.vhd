library ieee;
    use ieee.std_logic_1164.all;
    entity parche is
        port(
            a: in std_logic_vector(3 downto 0);
            even,odd: out std_logic);
        end parche;
    architecture func of parche is
        begin
            even<= a(0) xor a(1) xor a(2) xor a(3);
            odd<= a(0) xnor a(1) xnor a(2) xnor a(3);
        end func;
            
