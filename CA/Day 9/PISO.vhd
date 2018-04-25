library IEEE;
   use IEEE.STD_LOGIC_1164.all;
entity piso is
     port(
         clk : in STD_LOGIC;
         reset : in STD_LOGIC;
         load : in STD_LOGIC;
         din : in STD_LOGIC_VECTOR(3 downto 0);
         Q : out STD_LOGIC
         );
end piso;
architecture func of piso is
signal temp: std_logic_vector(3 downto 0);
begin
    process (clk,reset,load,din) 
        begin
        if (reset='1') then
            temp <= "0000";
        elsif (load='1') then
            temp <= din ;
        elsif (clk'event and clk='1') then
            Q <= temp(3);
            temp <= (temp(2 downto 0) & '0');
        end if;
    end process ;

end func;
