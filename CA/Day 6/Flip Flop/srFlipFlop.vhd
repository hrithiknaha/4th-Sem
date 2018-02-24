library ieee;
    use ieee.std_logic_1164.all;
    entity SRFF is
        port(
            s,r: in std_logic;
            q,qnext: inout std_logic);      --qnext is not Q' but Q(n+1)
        end SRFF;
architecture func of SRFF is
    begin
        process(s,r,q,qnext)
            begin
                qnext<=s or ((not r) and q);
            end if;
            end process;
        end func;

