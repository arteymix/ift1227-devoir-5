library work;

library ieee; use ieee.std_logic_1164.all;

entity human is
    port(
        clk: in std_logic;
        input: in std_logic;
        hourra: out std_logic
    );
end entity;

architecture lazy of human is

    type state_t is (
        S0, -- reset
        S1, -- lu 1
        S2, -- lu 11
        S3 -- lu 111
    );

    signal state: state_t := S0;
begin

    hourra <= '1' when state = S3 else '0';

    process(clk) is
    begin

        if rising_edge(clk) then

            case state is

                when S0 =>
                    if input = '1' then
                        state <= S1;
                    else
                        state <= S0;
                    end if;

                when S1 => 
                    if input = '1' then
                        state <= S2;
                    else
                        state <= S1;
                    end if;

                when S2 => 
                    if input = '1' then
                        state <= S3;
                    else
                        state <= S2;
                    end if;

                when S3 => state <= S0;

            end case;
        end if;
    end process;
end architecture;
