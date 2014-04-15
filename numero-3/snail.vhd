library ieee; use ieee.std_logic_1164.all;

entity snail is
    port(
        clk:    in std_logic;
        input:  in std_logic;
        output: out std_logic
    );
end entity;

-- met 1 dans la sortie lorsque 1101 est lu
architecture sticky of snail is

    type state_t is (
        S0, -- reset
        S1, -- lu 1
        S2, -- lu 11
        S3, -- lu 110
        S4  -- lu 1101
    );

    signal state: state_t := S0;

begin

    -- combinatoire des sorties
    output <= '1' when state = S4 else '0';

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
                        state <= S0;
                    end if;

                when S2 => 
                    if input = '0' then
                        state <= S3;
                    else
                        state <= S0;
                    end if;

                when S3 =>
                    if input = '1' then
                        state <= S4;
                    else
                        state <= S0;
                    end if;

                when S4 => state <= S0;

            end case;
        end if;
    end process;
end architecture;
