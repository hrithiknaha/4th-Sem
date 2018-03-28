library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;
entity bitalu8 is
    port(
        a,b: in std_logic_vector(7 downto 0);
        op: in std_logic_vector(3 downto 0);
        zero: out bit;
        f: out std_logic_vector(7 downto 0));
    end bitalu8;
architecture func of bitalu8 is
    begin
        process(op)
            variable temp:std_logic_vector(7 downto 0);
            begin
                case op is
                    when "0000" =>
                        temp:=a+b;
                    when "0001" =>
                        temp:=a+b+1;
                    when "0010" =>
                        temp:=a+(not b);
                    when "0011" =>
                        temp:=a+(not b)+1;
                    when "0100" =>
                        temp:=a+1;
                    when "0101" =>
                        temp:=a-1;
                    when "0110" =>
                        temp:=a and b;
                    when "0111" =>
                        temp:=a or b;
                    when "1000" =>
                        temp:=not a;
                    when "1001" =>
                        temp:=a xor b;
                    when "1010" =>
                        temp:=a nand b;
                    when "1011" =>
                        temp:=a nor b;
                    when "1100" =>
                        temp:=a xnor b;
                    when "1101" =>
                        temp:=a;
                    when "1110" =>
                        temp:=b;
                    when "1111" =>
                        if a<b then
                            temp:="11111111";
                        else
                            temp:="00000000";
                        end if;
                    when others =>
                        NULL;
                end case;
                if temp="00000000" then
                    zero<='1';
                else 
                    zero<='0';
                end if;
                f<=temp;
            end process;
        end func;
