library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Minhoca is
  port (
        disp  		: buffer std_logic_vector (55 downto 0);
        clock 		: in std_logic;   --  clock 50 Mhz
        reset   	: in  std_logic;  --  reseta o caminho para a posição inicial
        ir        : in std_logic;  -- Y15 -> IR
        vcc       : out std_logic;  -- H14 -> BEEP
        led_posic : out std_logic_vector (9 downto 0)    -- Leds das posições da minhoca
        );
end Minhoca;


architecture main of Minhoca is

  component vel is
    port (
          clock       :   in std_logic;                         -- clock 50 Mhz
          clk         :   out std_logic;                        -- clock velocidade escolhida
          vel1        :   in std_logic_vector (3 downto 0)      -- entrada do controle remoto
          );
  end component;	

  component ways_Minhoca is
    port (
            clk         :   in  std_logic;  -- clock modulado
            pause       :   in std_logic;   -- Funciona a máquina
            reset       :   in std_logic;   -- reseta a máquina
            sentido     :   in std_logic;   -- altera o sentido da máquina
            caminho     :   in std_logic;    -- escolhe o caminho
            disp  		:   buffer std_logic_vector (55 downto 0);
            led_posic   :   out std_logic_vector (9 downto 0) -- Leds das posições da minhoca
        );
  end component;

  component beep is
    port(
            clk   :   in std_logic;
            vcc   :   out std_logic
        );
  end component;

  component ir1 is
    port(
          clock_50            :   in  std_logic;                        -- Y2 50 Mhz
          in_IR               :   in  std_logic;                        -- Y15 sinal recebido pela portadora (vindo do controle)
          push                :   in  std_logic;                        -- push botton RESET
          way                 :   out std_logic;                        -- caminhos da minhoca
          sentido             :   out std_logic;                        -- sentidos da minhoca
          speed               :   out std_logic_vector (3 downto 0);    -- velocidade da minhoca e freq do beep
          pause               :   out std_logic                         -- liga ou desliga a movimentação
        );
  end component;



  signal clk				  :   std_logic;                      -- sinal do clock modulado
  signal caminho 	    :   std_logic;                      -- escolhe o caminho 1 ou 2
  signal sentido    	:   std_logic;                      --  muda o sentido da minhoca
  signal vel1         :   std_logic_vector (3 downto 0);  -- velocidade da cobra
  signal pause        :   std_logic;                      -- liga ou desliga



  begin
  
  
    sub1  :   vel port map (clock, clk, vel1);
    sub2  :   ways_Minhoca port map (clk, pause, reset, sentido, caminho, disp, led_posic);
    sub3  :   beep port map (clk, vcc);
    sub4  :   ir1 port map (clock, ir, reset, caminho, sentido, vel1, pause);
  
end main ; -- main