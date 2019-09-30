library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux2_1 is
  port (
            in1, in2    :   in  std_logic;  -- entradas
            sel1        :   in  std_logic;  -- seletores
            o           :   out std_logic
        );
end mux2_1;

architecture main of mux2_1 is

    begin
        process (sel1)
            begin
                if (sel1 = '0') then 
                    o <= in1;
                elsif (sel1 = '1') then
                    o <= in2;
                end if;
        end process;
end main ; -- main