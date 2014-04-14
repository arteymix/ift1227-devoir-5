entity human is
    port(
        clk: in std_logic;
        input: in std_logic;
        hourra: out std_logic
    );
end entity;

architecture lazy of human is
begin

    my_super_snail: use work.snail port map(clk, input, output);

    process(clk) is

        if rising_edge(clk) then
            

        end if;

    end process;

end architecture;
