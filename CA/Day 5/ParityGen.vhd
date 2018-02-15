library ieee;
    use ieee.std_logic_1164.all;
    entity pargen is
        port(
            a: in std_logic_vector(2 downto 0);
            even,odd: out std_logic);
        end pargen;
    architecture func of pargen is
        begin
            even<= a(0) xor a(1) xor a(2);
            odd<= (a(0) xor a(1)) xnor a(2);
        end func;
            
