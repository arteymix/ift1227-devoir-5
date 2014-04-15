library IEEE; use IEEE.STD_LOGIC_1164.all;
library work;
use work.snail;
use work.observateur;

entity TOP is
port(
	clk : in std_logic;
	input : in std_logic;
	reset : in std_logic;
	output : out std_logic

);
end TOP;

architecture behavior of TOP is
--signal maybe
signal s1 : std_logic:='0';
begin
	Snail : entity work.snail port map(clk,input,reset,s1);
	Observator : entity work.observateur port map(clk,s1,reset,output);
end behavior;
