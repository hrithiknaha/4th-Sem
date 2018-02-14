library ieee;
    use ieee.std_logic_1164.all;
    entity fullAdderM is
        port(
            A: in bit;
            B: in bit;
            C: in bit;
            S: out bit;
            Cout: out bit;
            clk: in bit);
     end fullAdderM;
architecture func of fullAdderM is
    begin
       
       Cout<=(A and B)or(B and C)or(C and A);
       process(A,B,C)
       begin
           S<= (A xor B) xor C;
       end process;
   end func;
