library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    
    entity penc1 is
        port(
            a : in std_logic_vector(3 downto 0);
            b : out std_logic_vector(1 downto 0)
            );
        end penc1;
        architecture func of penc1 is
            begin
                process (a)
                    begin
                      if (a="0001") then
                          b <= "00";
                          
                          elsif (a = "0010") then
                          b<= "01";
                          
                          elsif (a>"0010" and a<"0100") then
                              b <= "01";
                              
                          elsif (a = "0100") then
                              b<= "10";
                              
                           elsif (a>"0100" and a<"1000") then
                               b <= "10";
                               
                            elsif (a="1000" or a>"1000") then
                                b <= "11";
                                
                        end if;
                    end process;
                end func;

