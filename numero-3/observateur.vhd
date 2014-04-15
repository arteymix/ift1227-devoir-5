library IEEE; use IEEE.STD_LOGIC_1164.all;

entity observateur is
port
(
	clk   : in std_logic;
	input : in std_logic;
	reset : in std_logic;
	hourra : out std_logic
	);
end entity;

architecture rtl of observateur is
	type state_type is (s0,s1,s2,s3);
	signal state : state_type;

begin
	process (clk, reset)
	begin
		if reset = '1' then state <= s0;
		elsif (rising_edge(clk)) then
			case state is
				when s0 => if input = '1' then
					state <= s1; else state <= s0;end if;
				when s1 => if input = '1' then
					state <= s2; else state <= s1;end if;
				when s2 => if input = '1' then
					state <= s3; else state <= s2;end if;
				when s3 => if input = '1' then
					state <= s1; else state <= s0;end if;
				when others => state <= s0;
			end case;
		end if;
	end process;
	
	
	
	process(state)
	begin
		case state is
			when s3 => hourra <= '1';
			when others => hourra <= '0';
		end case;
	end process;
	
	
end rtl;