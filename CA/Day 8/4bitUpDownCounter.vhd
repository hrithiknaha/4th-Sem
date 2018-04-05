library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    entity updowncounter is
        port(
            clock,clr,m: in std_logic;
            Q: out std_logic_vector(3 downto 0));
        end updowncounter;
architecture func of updowncounter is
    signal temp: std_logic_vector(3 downto 0);
    begin
        process(clock,clr)
            begin
            if(clr='1') then
                temp<="0000";
            elsif(clock'event and clock='1') then
                if(m='1') then
                   temp<=temp+1;
                elsif(m='0') then
                    temp<=temp-1;
            end if;
        end if;
    end process;
    Q<=temp;
end func;
