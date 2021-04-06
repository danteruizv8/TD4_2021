-------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY sumador2bits_TB IS
END sumador2bits_TB;
 
ARCHITECTURE behavior OF sumador2bits_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumador2bits
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         Enable : IN  std_logic;
         Resultado : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '1';
   signal b : std_logic := '0';
   signal Enable : std_logic := '0';


   --Outputs
   signal Resultado : std_logic_vector(1 downto 0);

 
BEGIN
 
  -- Instantiate the Unit Under Test (UUT)
   uut: sumador2bits PORT MAP (
         a => a,
         b => b,
         Enable => Enable,
         Resultado => Resultado
        );
 


   -- Stimulus process
   stim_proc: process
   begin    
      -- Enable en 0
      wait for 50 ms;  
      a <= '0';
      b <= '0';
      Enable  <= '0';

      wait for 50 ms;  
      a <= '0';
      b <= '1';
      Enable  <= '0';

      wait for 50 ms;  
      a <= '1';
      b <= '0';
      Enable  <= '0';

      wait for 50 ms;  
      a <= '1';
      b <= '1';
      Enable  <= '0';
      
      -- Enable en 1
      
      wait for 50 ms;  
      a <= '0';
      b <= '0';
      Enable  <= '1';

      wait for 50 ms;  
      a <= '0';
      b <= '1';
      Enable  <= '1';

      wait for 50 ms;  
      a <= '1';
      b <= '0';
      Enable  <= '1';

      wait for 50 ms;  
      a <= '1';
      b <= '1';
      Enable  <= '1';
      
      

      wait for 50 ms;  

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
