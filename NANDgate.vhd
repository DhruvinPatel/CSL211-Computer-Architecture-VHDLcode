library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NANDgate is
	port(a,
			b:in std_logic;
			z:out std_logic);
end NANDgate;

architecture nandgate of NANDgate is
	signal input:std_logic_vector(1 downto 0);
	begin
		process(a,b)
			begin
				z <= a NAND b;
		end process;
end nandgate;