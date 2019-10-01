library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ircontrol is
  port (
            bits    :   in  std_logic_vector (7 downto 0);  -- 8 bits recebidos
            way     :   out std_logic;                      -- caminho 1 ou caminho 2
            sentido :   out std_logic;                      -- sentido 1 ou sentido 2
            speed   :   out std_logic_vector (3 downto 0);  -- velocidade da minhoca
            pause   :   out std_logic                       -- pausa o funcionamento da minhoca
        );
end ircontrol;

architecture main of ircontrol is

    -- Caminhos
    signal A            :   std_logic_vector (7 downto 0)    :=      "00001111";
    signal B            :   std_logic_vector (7 downto 0)    :=      "00010011";
    
    -- Sentido
    signal dir          :   std_logic_vector (7 downto 0)    :=      "00011000";
    signal esq          :   std_logic_vector (7 downto 0)    :=      "00010100";
    
    -- Liga ou Desliga
    signal play         :   std_logic_vector (7 downto 0)    :=      "00010110";
    signal power        :   std_logic_vector (7 downto 0)    :=      "00010010";

    -- Velocidades 
    signal one              :   std_logic_vector (7 downto 0)    :=      "00000001";
    signal two              :   std_logic_vector (7 downto 0)    :=      "00000010";
    signal three            :   std_logic_vector (7 downto 0)    :=      "00000011";
    signal four             :   std_logic_vector (7 downto 0)    :=      "00000100";
    



    begin
        process (bits)  -- verifica se é o botão A ou B
            begin
                if (bits = A) then 
                    way <= '1';

                elsif (bits = B) then 
                    way <= '0';
                end if;
        end process;

        process (bits)  -- Verifica o sentido
            begin
                if (bits = dir) then 
                    sentido <= '1';
                
                elsif (bits = esq) then 
                    sentido <= '0';
                end if;
        end process;

        process (bits)  -- Verifica se liga ou se desliga
            begin
                if (bits = power) then 
                    pause <= '0';
                
                elsif (bits = play) then 
                    pause <= '1';
                end if;
        end process;

        process (bits)  -- Verifica 
        begin
            if (bits = one) then 
                speed <= "0001";
        
            elsif (bits = two) then 
                speed <= "0010";

            elsif (bits = three) then 
                speed <= "0100";

            elsif (bits = four) then 
                speed <= "1000";

            end if;
        end process;

        
end main ; -- main