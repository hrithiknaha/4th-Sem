library ieee;
    use ieee.std_logic_1164.all;
    entity halfAdderB is
        port(
            A: in bit;
            B: in bit;
            S: out bit;
            C: out bit);
     end halfAdderB;
architecture func of halfAdderB is
    begin
        process(a,b)
            begin
              S<=A xor B;
              C<=A and B;
          end process;
   end func;
            

