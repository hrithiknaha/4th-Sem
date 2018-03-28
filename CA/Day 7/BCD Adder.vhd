library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
   entity bcdadd is
       port( a,b:in  unsigned(3 downto 0);
          cin:in std_logic;
          sum:out  unsigned(3 downto 0); 
          cout:out std_logic);
end bcdadd;
architecture func of bcdadd is
begin
process(a,b)
variable sum_temp:unsigned(4 downto 0);
begin
    sum_temp:= ('0' & a) + ('0' & b) + ("0000" & cin); --concatenating 0 with a and b and 0000 with cin and adding all of them
    if(sum_temp > 9) then
        cout <= '1';
        sum<=resize((sum_temp + "00110"),4);    --resizing from 5 bit to 4 bit, new size (4-1 downto 0)
    else
        cout<='0';
        sum<=sum_temp(3 downto 0);
    end if; 
end process;   
end func;
