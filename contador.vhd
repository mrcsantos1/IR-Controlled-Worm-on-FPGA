library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contador is
  port (
        clock    :   in std_logic;      -- clock Y2 50 Mhz
        hz       :   in integer;        -- variável inteira escolhida de acordo com a velocidade desejada
        clkn     :   buffer std_logic   -- saída do contador do clock
        );
end contador;


architecture main of contador is

    signal ctn  :   integer :=  0;      -- sinal criado para auxílio do cálculo

    begin
        process (clock)
            begin
                if (clock'event and clock = '1') then 
                    ctn <= ctn + 1;
                    if ctn = hz then 
                        clkn <= not clkn;
                        ctn <= 0;
                    end if;
                end if;
        end process;

end main ; -- main