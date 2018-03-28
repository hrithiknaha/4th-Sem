library ieee;
    use ieee.std_logic_1164.all;
    entity BCDtoExcess3 is
        port(
            BCD: in std_logic_vector(3 downto 0);
            Exc: out std_logic_vector(3 downto 0));
        end BCDtoExcess3;
architecture func of BCDtoExcess3 is
    begin
    process(BCD)
        begin
          Exc(3)<=BCD(3) or (BCD(2) and BCD(1)) or (BCD(2) and BCD(0));
          Exc(2)<=(not BCD(2) and BCD(1)) or (not BCD(2) and BCD(0)) or (BCD(2) and (not BCD(1)) and (not BCD(0)));
          Exc(1)<=BCD(1) xnor BCD(0); 
          Exc(0)<=not BCD(0);
      end process;
  end func;
        
