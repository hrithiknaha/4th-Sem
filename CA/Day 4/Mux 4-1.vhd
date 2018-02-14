library ieee;
    use ieee.std_logic_1164.all;
   
    
    entity mux1 is
        port(
            A,B,C,D,S0,S1 : in std_logic;
            Z : out std_logic
            );
        end mux1;
        
    architecture func of mux1 is
        begin
            process(A,B,C,D,S0,S1)
                begin
                    if(S0 = '0' and S1 = '0') then
                        Z<=A;
                    elsif(S0='0' and S1='1') then
                        Z<=B;
                    elsif(S0='1' and S1='0') then
                        Z<=C;
                    elsif(S0='1' and S1='1') then
                        Z<=D;
                end if;
            end process;
        end func;

