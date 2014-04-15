library IEEE; use IEEE.STD_LOGIC_1164.all;

entity snail is
port
(
	clk   : in std_logic;
	input : in std_logic;
	reset : in std_logic;
	output : out std_logic
	);
end entity;

architecture rtl of snail is
	type state_type is (s0,s1,s2,s3,s4);
	signal state: state_type;

begin
	process (clk, reset)
	begin
		if reset = '1' then state <= s0;
		elsif (rising_edge(clk)) then
			case state is
				when s0 => if input = '1' then
					state <= s1; else state <= s0;end if;
				when s1 => if input = '1' then
					state <= s2; else state <= s0;end if;
				when s2 => if input = '1' then
					state <= s2; else state <= s3;end if;
				when s3 => if input = '1' then
					state <= s4; else state <= s0;end if;
				when s4 => if input = '1' then
					state <= s2; else state <= s0;end if;
				when others => state <= s0;
			end case;
		end if;
	end process;
	
	
	
	process(state)
	begin
		case state is
			when s4 => output <= '1';
			when others => output <= '0';
		end case;
	end process;
	
	
end rtl;