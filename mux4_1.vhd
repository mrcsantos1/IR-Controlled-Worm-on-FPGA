library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux4_1 is
    port(
            in1, in2, in3, in4     :   in  std_logic;  -- entradas do mux
            sel1                   :   in  std_logic;  -- seletores
            sel2                   :   in  std_logic    :=  '0'; -- neste caso, o mux está sendo utilizado como 2 to 1
            o                      :   out std_logic   -- saída do mux
        );
end mux4_1;

architecture main of mux4_1 is

    begin
        process (sel1, sel2)
            begin
                if ((sel2 = '0') and (sel1 = '0')) then 
                    o <= in1;
                elsif ((sel2 = '0') and (sel1 = '1')) then
                    o <= in2;
                elsif ((sel2 = '1') and (sel1 = '0')) then
                    o <= in3;
                elsif ((sel2 = '1') and (sel1 = '1')) then 
                    o <= in4;
                end if;
        end process;
end main ; -- main