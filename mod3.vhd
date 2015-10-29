library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mod3counter is
	port(clk:in std_logic;
			q1,q2:inout std_logic);
end mod3counter;


architecture asynchronous of mod3counter is
		component JKflipflop is
			port(j,
				k,
				rst,
				clk:in std_logic;
				q,
				qbar:out std_logic);
		end component JKflipflop;

		component nandgate is
			port(a,
				b:in std_logic;
				z:out std_logic);
		end component nandgate;
		
		signal nandout, q1b, q2b : std_logic;
		begin
			uut1: JKflipflop port map( j => '1', k => '1', rst => nandout, clk => clk, q => q1, qbar => q1b );
			uut2: JKflipflop port map( j => '1', k => '1', rst => nandout, clk => q1, q => q2, qbar => q2b );
			uut3: NANDgate port map( a => q1, b => q2, z => nandout );
end asynchronous;
				


