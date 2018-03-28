library ieee;
      use ieee.std_logic_1164.all;
   use ieee.std_logic_unsigned.all;
      entity Excess3toBCD is
           port(ex: in std_logic_vector(3 downto 0);
                b: out std_logic_vector(3 downto 0));
      end Excess3toBCD;
architecture func of Excess3toBCD is
begin
    process(ex)
        begin
          b<=(ex)-"0011";
end process;
end func;