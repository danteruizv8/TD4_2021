----------------------------------------------------------------------------------
-- UNIVERSIDAD TECNOLÓGICA NACIONAL -FACULTAD REGIONAL CORDOBA
-- Carrera: INGENIERIA ELECTRÓNICA.
-- Asignatura: TÉCNICAS DIGITALES IV (ELECTIVA).
-- Año: 2021.
-- Grupo nº: XX.
-- Integrantes:
--
--		Ruiz, Dante Nelson			 Leg. nº:49881
--		Albarran, Gustavo.   		  	 Leg. nº:43143
--		
--
-- Fecha de Entrega: xx/xx/2021.
-- Hardware: Edu FPGA
-- VHDL auxiliares utilizados
-- UCF utilizado
-- Práctico entrenamiento nº01: Sumador de dos bits.
-- Descripción: Se sintetiza en Lattice iCE2. 
-- 				Se simula en https://www.edaplayground.com/x/8zhG
-- Dificultades. Los pulsadores de la placa tienen lógica negada.
-- Colocar algún consejo para recordar en el futuro
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY sumador2bits IS
    PORT(
         a: IN  std_logic;
         b : IN  std_logic;
         Enable : IN  std_logic;
         Resultado : OUT  std_logic_vector(1 downto 0)
        );
END sumador2bits;
 
ARCHITECTURE behavior OF sumador2bits IS

SIGNAL interna : std_logic_vector(2 downto 0);

BEGIN

interna <= not a & not b & not Enable; -- creo un vector o bus

process (interna)
begin
----------------------------------------
  case interna is
    when "111" =>
      Resultado <= "10";
    when "101" =>
      Resultado <= "01";
    when "011" =>
      Resultado <= "01";
    when others =>       
      Resultado <= "00";
  end case;
----------------------------------------
end process;


END;



