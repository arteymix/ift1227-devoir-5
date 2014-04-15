library work;

library ieee; use ieee.std_logic_1164.all;

entity testbed is


end entity;

-- testbed for the snail
architecture snail of testbed is

    type fixture_t is array(0 to 15) of std_logic;
    
    signal inputs: fixture_t := (
        '1', '1', '0', '1',
        '1', '1', '0', '1',
        '1', '1', '0', '1',
        '1', '1', '1', '1' -- breaks sequence
    );

    signal temps: fixture_t := (
        '0', '0', '0', '1',
        '0', '0', '0', '1',
        '0', '0', '0', '1',
        '0', '0', '0', '0'
    );

    signal hourras: fixture_t := (
        '0', '0', '0', '0', -- 1/3
        '0', '0', '0', '0', -- 1/3
        '0', '0', '0', '1', -- 3/3
        '0', '0', '0', '0'
    );

    signal temp: std_logic;

    signal cycle: natural := 0;

    signal clk: std_logic := '0';
    signal input: std_logic := inputs(0);
    signal hourra: std_logic := hourras(0);
begin

    input <= inputs(cycle mod 14);
    hourra <= hourras(cycle mod 14);

    snail: entity work.snail port map(clk, input, temp);
    observateur: entity work.observateur port map(clk, temp, hourra);

    process is
    begin

        while true loop

            clk <= '0';
            wait for 1 ms;

            clk <= '1';
            wait for 1 ms; -- time for adjusting outputs

            -- assertions
            assert hourra = hourras(cycle mod 14) report "bad value for hourra";
            assert temp   = temps(cycle mod 14) report "bad value for temp";

            cycle <= cycle + 1;

        end loop;
    end process;

end architecture;
