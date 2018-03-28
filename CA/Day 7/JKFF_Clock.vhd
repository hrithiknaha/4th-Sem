library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
       entity jkffc is
           port(
                  j,k,clock:in std_logic;
                  qnext,qnextbar:out std_logic);
              end jkffc;
architecture func of jkffc is
    begin
        process(clock)
            variable tmp: std_logic;
            begin
                if(clock='1' and clock'EVENT) then
                    if(j='0' and k='0') then
                        tmp:=tmp;
                    elsif(j='1' and k='1') then
                        tmp:=not tmp;
                    elsif(j='0' and k='1') then
                        tmp:='0';
                    else
                       tmp:='1';
                    end if;
                end if;
                qnext<=tmp;
                qnextbar<=not tmp;
            end process;
        end func;
