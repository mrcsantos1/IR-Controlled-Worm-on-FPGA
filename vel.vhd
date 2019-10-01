library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity vel is
  port (
            clock       :   in std_logic;                       -- clock 50 Mhz
            clk         :   out std_logic;                      -- clock velocidade escolhida
            vel1        :   in std_logic_vector (3 downto 0)    -- entrada do controle remoto
        );
end vel;

architecture main of vel is

    component mux4_1 is   -- mux 4 to 1 sendo utilizado como um 2 to 1
      port(
            in1, in2, in3, in4     :   in  std_logic;                       -- entradas do mux
            sel1                   :   in  std_logic_vector (3 downto 0);   -- seletores
            o                      :   out std_logic                        -- saída do mux
          );
    end component;  
    
    
    component contador is
      port (
            clock    :   in std_logic;      -- clock Y2
            hz       :   in integer;        -- inteiro do contador, utilizado para setar a velocidade
            clkn     :   buffer std_logic   -- saída do clock modulado
            );
    end component;

    signal  clk1, clk2, clk3, clk4    :   std_logic;    -- sinais utilizados para corroborar com a lógica do programa

    begin

      sub1  : contador port map (clock, 7500000,  clk1);    -- seta a velocidade 1
      sub2  : contador port map (clock, 6250000,  clk2);    -- seta a velocidade 2
      sub3  : contador port map (clock, 3125000,  clk3);    -- seta a velocidade 3
      sub4  : contador port map (clock, 1875000,  clk4);    -- seta a velocidade 4
      
    
      sub5  : mux4_1 port map (clk1, clk2, clk3, clk4, vel1, clk);      -- colocar a velocidade 1 e a 2 dentro do mux

end main ; -- main