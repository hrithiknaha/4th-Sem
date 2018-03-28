library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;
entity bitalu4 is
    port(
        a,b: in std_logic_vector(3 downto 0);
        op: in std_logic_vector(2 downto 0);
        zero: out std_logic;
        f: out std_logic_vector(3 downto 0));
    end bitalu4;
architecture func of bitalu4 is
    begin
        process(op)
            variable temp:std_logic_vector(3 downto 0);
            begin
                case op is
                    when "000" =>
                        temp:=a+b;
                    when "001" =>
                        temp:=a-b;
                    when "010" =>
                        temp:=a+1;
                    when "011" =>
                        temp:=a-1;
                    when "100" =>
                        temp:=a and b;
                    when "101" =>
                        temp:=a or b;
                    when "110" =>
                        temp:=not a;
                    when "111" =>
                        if a<b then
                            temp:="1111";
                        else
                           temp:="0000";
                       end if;
                    when others =>
                        NULL;
                end case;
                if temp="0000" then
                    zero<='1';
                else
                    zero<='0';
                end if;
                f<=temp;
            end process;
        end func;