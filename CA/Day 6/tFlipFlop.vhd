library ieee;
    use ieee.std_logic_1164.all;
    entity tFF is
        port(
            t: in std_logic;
            q,qnext: inout std_logic);      --qnext is not Q' but Q(n+1)
        end tFF;
architecture func of tFF is
    begin
        process(t,q,qnext)
            begin
                qnext<=t xor q;
            end process;
        end func;
