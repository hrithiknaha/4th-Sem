library ieee;
    use ieee.std_logic_1164.all;
    entity JKFF is
        port(
            j,k: in std_logic;
            q,qnext: inout std_logic);      --qnext is not Q' but Q(n+1)
        end JKFF;
architecture func of JKFF is
    begin
        process(j,k,q,qnext)
            begin
                qnext<=((j and (not q)) or ((not k) and q));
            end process;
        end func;

