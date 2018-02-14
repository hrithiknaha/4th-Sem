library ieee;
    use ieee.std_logic_1164.all;
    entity fullAdder is
        port(
            A: in bit;
            B: in bit;
            C: in bit;
            S: out bit;
            Cout: out bit);
     end fullAdder;
architecture func of fullAdder is
    begin
        S<=A xor B xor c;
        Cout<=(A and B)or(B and C)or(C and A);
   end func;
            

