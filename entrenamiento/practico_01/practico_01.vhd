----------------------------------------------------------------------------------
-- UNIVERSIDAD TECNOLÓGICA NACIONAL -FACULTAD REGIONAL CORDOBA
-- Carrera: INGENIERIA ELECTRÓNICA.
-- Asignatura: TÉCNICAS DIGITALES IV (ELECTIVA).
-- Año: 2021.
-- Grupo nº: XX.
-- Integrantes:
--
--		Ruiz, Dante Nelson				 Leg. nº:49881
--		Albarran, Gustavo.   		  	 Leg. nº:02524
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
BEGIN

Resultado <= "10" when ((not a and not b)='1' and not Enable='1') else
			 "01" when ((not a xor not b)='1' and not Enable='1') else
			 "00";


END;

