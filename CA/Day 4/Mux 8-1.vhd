library ieee;
    use ieee.std_logic_1164.all;
    
    entity mux2 is
        port(
            A,B,C,D,E,F,G,H,S0,S1,S2 : in std_logic;
            Z : out std_logic
            );
        end mux2;
        
    architecture func of mux2 is
        begin
            process(A,B,C,D,E,F,G,H,S0,S1,S2)
                begin
                    if(S0 = '0' and S1 = '0' and S2='0') then
                        Z<=A;
                    elsif(S0='0' and S1='0' and S2='1') then
                        Z<=B;
                    elsif(S0='0' and S1='1' and S2='0') then
                        Z<=C;
                    elsif(S0='0' and S1='1' and S2='1') then
                        Z<=D;
                    elsif(S0 = '1' and S1 = '0' and S2='0') then
                        Z<=E;
                    elsif(S0='1' and S1='0' and S2='1') then
                        Z<=F;
                    elsif(S0='1' and S1='1' and S2='0') then
                        Z<=G;
                    elsif(S0='1' and S1='1' and S2='1') then
                        Z<=H;
                end if;
            end process;
        end func;


