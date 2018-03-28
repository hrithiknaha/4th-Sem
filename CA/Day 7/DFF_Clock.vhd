library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
       entity dffc is
           port(
                  d,clock:in std_logic;
                  qnext,qnextbar:out std_logic);
              end dffc;
architecture func of dffc is
    begin
        process(clock)
            variable tmp: std_logic;
            begin
                if(clock='1' and clock'event) then
                    if(d='0') then
                        tmp:='0';
                    else
                        tmp:='1';
                    end if;
                end if;
                qnext<=tmp;
                qnextbar<=not tmp;
            end process;
        end func;
