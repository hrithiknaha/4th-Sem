library ieee;
    use ieee.std_logic_1164.all;
    entity fullAdderB is
        port(
            A: in bit;
            B: in bit;
            C: in bit;
            S: out bit;
            Cout: out bit);
     end fullAdderB;
architecture func of fullAdderB is
    begin
        process(A,B,C)
            begin
              S<=A xor B xor C;
              Cout<=(A and B)or(B and C)or(C and A);
          end process;
   end func;
