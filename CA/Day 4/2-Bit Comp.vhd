library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    
    entity comparator2B is
        port(
            a,b : in std_logic_vector(1 downto 0);
            agb : out std_logic;
            alb : out std_logic;
            aeb : out std_logic
            );
        end comparator2B;
        architecture func of comparator2B is
            begin
                process (a,b)
                    begin
                        if a>b then
                            agb <= '1';
                            alb <= '0';
                            aeb <= '0';
                        elsif a<b then
                            agb <= '0';
                            alb <= '1';
                            aeb <= '0';
                        else
                           aeb <= '1';
                           alb <= '0';
                           agb <= '0';
                       end if;
                   end process;
                end func;

