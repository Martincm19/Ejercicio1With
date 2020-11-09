-- Ejercicio 2 VHDL

library IEEE;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_arith.all;
 use ieee.std_logic_unsigned.all;

entity Ejercicio2With is
	
	port
	(
		-- Pines de entrada
		A,B,C,D	: in  bit;
		
		-- Pines de salida
		F	: out  bit);

end Ejercicio2With;


architecture Behavioral of Ejercicio2With is

signal ABCD : bit_vector (3 downto 0);

begin

ABCD <= A & B & C & D;

     with ABCD select

     F <= '0' when "0011"|"0111"|"1011"|"1111",
	  '1' when others;
	  
end Behavioral;
