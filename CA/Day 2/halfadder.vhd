library ieee;
    use ieee.std_logic_1164.all;
    entity halfAdder is
        port(
            A: in bit;
            B: in bit;
            S: out bit;
            C: out bit);
     end halfAdder;
architecture func of halfAdder is
    begin
        S<=A xor B;
        C<=A and B;
   end func;
            
