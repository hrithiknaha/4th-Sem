library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    entity upcounter is
        port(
            clock,clr: in std_logic;
            Q: out std_logic_vector(3 downto 0));
        end upcounter;
architecture func of upcounter is
    signal temp: std_logic_vector(3 downto 0);
    begin
        process(clock,clr)
            begin
            if(clr='1') then
                temp<="0000";
            elsif(clock'event and clock='1') then
                temp<=temp+1;
        end if;
    end process;
    Q<=temp;
end func;
