library ieee;
    
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity MOD4 is
port
 (
  count: out std_logic_vector(3 downto 0);
  clk : in std_logic
 );
 
 end MOD4;
 
 architecture bhv of MOD4 is
 begin
 process(clk)
 
   variable temp : integer range 0 to 4;
   begin
       if(clk'event and clk = '1')then
           temp := temp+1;
           if (temp = 4) then
               temp := 0;
           end if;
           
     end if;
     
     count <= conv_std_logic_vector(temp,4);
 end process;  
end bhv;