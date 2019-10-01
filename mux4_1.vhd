library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux4_1 is
    port(
            in1, in2, in3, in4     :   in  std_logic;                       -- entradas do mux
            sel1                   :   in  std_logic_vector (3 downto 0);   -- seletores
            o                      :   out std_logic                        -- saída do mux
        );
end mux4_1;

architecture main of mux4_1 is

    begin
        process (sel1)
            begin
                if (sel1 = "0001") then 
                    o <= in1;
                elsif (sel1 = "0010") then
                    o <= in2;
                elsif (sel1 = "0100") then
                    o <= in3;
                elsif (sel1 = "1000") then 
                    o <= in4;
                end if;
        end process;
end main ; -- main