library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity beep is
    port(
            clk     :   in  std_logic;          -- Entrada do sinal na frequência escolhida
            vcc     :   out std_logic := '0'    -- H14 --> saida com 3.3 Volts
        );
end beep;

architecture main of beep is

    begin

        process (clk)
            begin
                    if (clk = '1') then 
                        vcc <= '1';     -- 3.3 Volts
                    else
                        vcc <= '0';     -- 0.0 Volts
                    end if;
        end process;

end main ; -- main