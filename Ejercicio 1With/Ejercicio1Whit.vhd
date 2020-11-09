-- Ejercicio 1 VHDL

library IEEE;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_arith.all;
 use ieee.std_logic_unsigned.all;

entity Ejercicio1Whit is
	
	port
	(
		-- Pines de entrada
		A,B,C	: in  bit;
		
		-- Pines de salida
		F	: out  bit);

end Ejercicio1Whit;


architecture Behavioral of Ejercicio1Whit is

signal ABC : bit_vector (2 downto 0);

begin

ABC <= A & B & C;

     with ABC select

     F <= '1' when "000",
     '1' when "001",
	  '1' when "100",
	  '0' when others;
	  
end Behavioral;

