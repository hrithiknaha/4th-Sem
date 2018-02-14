library ieee;
    use ieee.std_logic_1164.all;
    entity halfAdderM is
        port(
            A: in bit;
            B: in bit;
            S: out bit;
            C: out bit;
            clk: in bit);
     end halfAdderM;
architecture func of halfAdderM is
    begin
       S<= A xor B;
       process(A,B)
       begin
           C<=A and B;
       end process;
   end func;
            
