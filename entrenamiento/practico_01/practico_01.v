// File practico_01.vhd translated with vhd2vl v2.4 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 1995

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002, 2005, 2008-2010 Larry Doolittle - LBNL
//     http://doolittle.icarus.com/~larry/vhd2vl/
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

//--------------------------------------------------------------------------------
// UNIVERSIDAD TECNOLÓGICA NACIONAL -FACULTAD REGIONAL CORDOBA
// Carrera: INGENIERIA ELECTRÓNICA.
// Asignatura: TÉCNICAS DIGITALES IV (ELECTIVA).
// Año: 2021.
// Grupo nº: XX.
// Integrantes:
//
//		Ruiz, Dante Nelson				 Leg. nº:49881
//		Albarran, Gustavo.   		  	 Leg. nº:02524
//		
//
// Fecha de Entrega: xx/xx/2021.
// Hardware: Edu FPGA
// VHDL auxiliares utilizados
// UCF utilizado
// Práctico entrenamiento nº01: Sumador de dos bits.
// Descripción: Se sintetiza en Lattice iCE2. 
// 				Se simula en https://www.edaplayground.com/x/8zhG
// Dificultades. Los pulsadores de la placa tienen lógica negada.
// Colocar algún consejo para recordar en el futuro
//------------------------------------------------------------------------------
// no timescale needed

module sumador2bits(
a,
b,
Enable,
Resultado
);

input a;
input b;
input Enable;
output [1:0] Resultado;

wire a;
wire b;
wire Enable;
wire [1:0] Resultado;



  assign Resultado = ((( ~a &  ~b)) == 1'b 1 && ( ~Enable) == 1'b 1) ? 2'b 10 : ((( ~a ^  ~b)) == 1'b 1 && ( ~Enable) == 1'b 1) ? 2'b 01 : 2'b 00;

endmodule
