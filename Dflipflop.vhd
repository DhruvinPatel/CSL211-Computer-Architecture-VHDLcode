library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dflipflop is
	port(d,
			clk:in std_logic;
			q:out std_logic);
end Dflipflop;

architecture Dff of Dflipflop is
	signal input:std_logic;
	begin
		input<=d;
		process(d,clk)
			variable set:std_logic:='0';
			begin
				if falling_edge(clk) then
					case input is
						when '1' =>
							set:='1';
						when '0'=>
							set:='0';
						end case;
				end if;
				q<= set;
		end process;
end Dff;