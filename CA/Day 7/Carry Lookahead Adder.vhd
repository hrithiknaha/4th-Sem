library ieee;
   use ieee.std_logic_1164.all;
   entity cla is
       port
          (
             a : in std_logic_vector (3 downto 0);
             b : in std_logic_vector (3 downto 0);
             cin : in std_logic;
             sum : out std_logic_vector(3 downto 0);
             cout : out std_logic);
  end cla;
architecture func of cla is
      signal h_sum : std_logic_vector (3 downto 0);
      signal carry_generate : std_logic_vector (3 downto 0);
      signal carry_propagate : std_logic_vector (3 downto 0);
      signal cin_internal : std_logic_vector(3 downto 1);
      begin
          h_sum <= a Xor b;
          carry_generate <= a and b;
          carry_propagate <= a or b;
             process (carry_generate,carry_propagate,cin_internal)
               begin
                   cin_internal(1) <= carry_generate(0) or (carry_propagate(0) and cin);
                   inst: for i in 1 to (2) loop
                      cin_internal(i+1) <= carry_generate(i) or (carry_propagate(i) and cin_internal(i));
                   end loop;
                   cout <= carry_generate(3) or (carry_propagate(3) and cin_internal(3));
             end process;
          sum(0) <= h_sum(0) Xor cin;
          sum(3 downto 1) <= h_sum(3 downto 1) Xor cin_internal(3 downto 1);
end func;
