library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
       entity tffc is
           port(
                  t,q,clock:in std_logic;
                  qnext,qnextbar:out std_logic);
              end tffc;
architecture func of tffc is
    begin
        process(clock)
            variable tmp: std_logic;
            begin
                if(clock='1' and clock'event) then
                    if(t='0') then
                        tmp:=q;
                    else
                        tmp:=not q;
                    end if;
                end if;
                qnext<=tmp;
                qnextbar<=not tmp;
            end process;
        end func;
                   