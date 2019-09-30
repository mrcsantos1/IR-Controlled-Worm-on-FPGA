library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ircontrol is
  port (
            bits    :   in std_logic_vector (7 downto 0);  -- 8 bits recebidos
            way     :   out std_logic;   -- caminho 1 ou caminho 2
            sentido :   out std_logic;   -- sentido 1 ou sentido 2
            speed   :   out std_logic;    -- velocidade da minhoca
            pause   :   out std_logic     -- pausa o funcionamento da minhoca
        );
end ircontrol;

architecture main of ircontrol is

    signal A            :   std_logic_vector (7 downto 0)    :=      "00001111";
    signal B            :   std_logic_vector (7 downto 0)    :=      "00010011";
    signal dir          :   std_logic_vector (7 downto 0)    :=      "00011000";
    signal esq          :   std_logic_vector (7 downto 0)    :=      "00010100";
    signal up           :   std_logic_vector (7 downto 0)    :=      "00011010";
    signal down         :   std_logic_vector (7 downto 0)    :=      "00011110";
    signal power        :   std_logic_vector (7 downto 0)    :=      "00010010";
    signal play         :   std_logic_vector (7 downto 0)    :=      "00010110";

    begin
        process (bits)  -- verifica se é o botão A ou B
            begin
                if (bits = A) then 
                    way <= '1';

                elsif (bits = B) then 
                    way <= '0';
                end if;
        end process;

        process (bits)
            begin
                if (bits = dir) then 
                    sentido <= '1';
                
                elsif (bits = esq) then 
                    sentido <= '0';
                end if;
        end process;

        process (bits)
            begin
                if (bits = up) then 
                    speed <= '1';
                
                elsif (bits = down) then 
                    speed <= '0';
                end if;
        end process;

        process (bits)
            begin
                if (bits = power) then 
                    pause <= '0';
                
                elsif (bits = play) then 
                    pause <= '1';
                end if;
        end process;

        
end main ; -- main