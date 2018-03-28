library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
       entity srffc is
           port(
                  s,r,clock:in std_logic;
                  qnext,qnextbar:inout std_logic);
              end srffc;
architecture func of srffc is
    begin
        process(clock)
            variable tmp: std_logic;
            begin
                if(clock='1' and clock'EVENT) then
                    if(s='0' and r='0') then
                        tmp:=tmp;
                    elsif(s='1' and r='1') then
                        tmp:='Z';
                    elsif(s='0' and r='1') then
                        tmp:='0';
                    else
                       tmp:='1';
                    end if;
                end if;
                qnext<=tmp;
                qnextbar<=not tmp;
            end process;
        end func;
