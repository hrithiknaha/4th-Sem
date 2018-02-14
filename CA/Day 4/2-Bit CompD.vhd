library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    
    entity comparator2D is
        port(
            a,b : in std_logic_vector(1 downto 0);
            agb : out std_logic;
            alb : out std_logic;
            aeb : out std_logic
            );
        end comparator2D;
        architecture func of comparator2D is
            begin
                agb <= '1' when (a>b)
                else '0';
                alb <= '1' when (a<b)
                else '0';
                aeb <= '1' when (a=b)
                else '0';
            end func;

