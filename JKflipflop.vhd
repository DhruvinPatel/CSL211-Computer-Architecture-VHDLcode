library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JKflipflop is
	port(j,
			k,
			rst,
			clk:in std_logic;
			q,
			qbar:out std_logic);
end JKflipflop;

architecture JK of JKFlipflop is
	signal input:std_logic_vector(1 downto 0);
	begin
		input<=j&k;
		process(j,k,rst,clk)
			variable set:std_logic:='0';
			begin
				if(rst='1')then
					if falling_edge(clk) then
						case input is
							when "10" =>
								set:='1';
							when "01"=>
								set:='0';
							when "11" =>
								set:=not set;
							when others=>
								null;
						end case;
					end if;
				else
					set:='0';
				end if;
				q <= set;
				qbar <= not set;
		end process;
end JK;