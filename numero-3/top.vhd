library work;

library ieee; use ieee.std_logic_1164.all;

entity top is
    port(
        clk: in std_logic;
        input: in std_logic
    );
end entity;

architecture amazing of top is

    signal temp, hourra: std_logic;

begin

    snail: entity work.snail port map(clk, input, temp);
    human: entity work.human port map(clk, temp, hourra);

end architecture;
