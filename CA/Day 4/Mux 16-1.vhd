library ieee;
    use ieee.std_logic_1164.all;
    
    entity mux3 is
        port(
            A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P: in std_logic;
            S:in std_logic_vector(3 downto 0);
            Z : out std_logic
            );
        end mux3;
        
    architecture func of mux3 is
        begin
            process(A,B,C,D,E,F,G,H,S)
                begin
                    if(S="0000") then
                        Z<=A;
                    elsif(S="0001") then
                        Z<=B;
                    elsif(S="0010") then
                        Z<=C;
                    elsif(S="0011") then
                        Z<=D;
                    elsif(S="0100") then
                        Z<=E;
                    elsif(S="0101") then
                        Z<=F;
                    elsif(S="0110") then
                        Z<=G;
                    elsif(S="0111") then
                        Z<=H;
                    elsif(S="1000") then
                        Z<=I;
                    elsif(S="1001") then
                        Z<=J;
                    elsif(S="1010") then
                        Z<=K;
                    elsif(S="1011") then
                        Z<=L;
                    elsif(S="1100") then
                        Z<=M;
                    elsif(S="1101") then
                        Z<=N;
                    elsif(S="1110") then
                        Z<=O;
                    elsif(S="1111") then
                        Z<=P;
                end if;
            end process;
        end func;
