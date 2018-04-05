library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    entity mod3 is
        port(
            clock,clr: in std_logic;
            Q: out std_logic_vector(2 downto 0));
        end mod3;
architecture func of mod3 is
    signal temp: std_logic_vector(2 downto 0);
    begin
        process(clock,clr)
            begin
            if(clr='1') then
                temp<="000";
            elsif(clock'event and clock='1') then
                temp<=temp+1;
            if(temp="010") then
               temp<="000";
           end if;
        end if;
    end process;
    Q<=temp;
end func;