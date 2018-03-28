library ieee;
    use ieee.std_logic_1164.all;
    entity DFF is
        port(
            d: in std_logic;
            q,qnext: inout std_logic);      --qnext is not Q' but Q(n+1)
        end DFF;
architecture func of DFF is
    begin
        process(d,q,qnext)
            begin
                qnext<=d;
            end process;
        end func;
        
