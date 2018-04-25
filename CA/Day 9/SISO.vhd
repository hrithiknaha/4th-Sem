library ieee;
    use ieee.std_logic_1164.all;
    entity siso is
        port(
            clk,clear:in std_logic;
            din:in std_logic;
            Q:out std_logic);
        end siso;
architecture func of siso is
    signal temp: std_logic_vector(3 downto 0);
    begin
        process(clk,clear)
            begin
                if(clear='1') then
                    temp<="0000";
                elsif(clk'event and clk='1') then
                    temp<=(din & temp(3 downto 1));
                    Q<=temp(0);
                end if;
            end process;
        end func;
