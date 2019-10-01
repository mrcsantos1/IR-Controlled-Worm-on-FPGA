-- glória a Deus

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ir1 is
    port(
          clock_50            :   in  std_logic;                        -- Y2 50 Mhz
          in_IR               :   in  std_logic;                        -- Y15 sinal recebido pela portadora (vindo do controle)
          push                :   in  std_logic;                        -- push botton RESET
          way                 :   out std_logic;                        -- caminhos da minhoca
          sentido             :   out std_logic;                        -- sentidos da minhoca
          speed               :   out std_logic_vector (3 downto 0);    -- velocidade da minhoca e freq do beep
          pause               :   out std_logic                         -- liga ou desliga a movimentação
        );
end ir1;

architecture main of ir1 is


  ------------------------------------- COMPONENTS ----------------------------------------------------------------------
  component pll1 is -- Subprograma em Verilog para controlar o clock 
    port(           -- Subprograma disponibilizado pela Intel Corporation
          inclk0      :       in  std_logic;
          c0          :       out std_logic
        );
  end component;

  component IR_RECEIVE is -- Subprograma em Verilog para controlar o sinal recebido de acordo com o protocolo do controle
    port(                 -- Subprograma disponibilizado pela Intel Corporation
          iCLK            :   in  std_logic;                            -- clk 50MHz vindo do controle do clock (pll1)
          iRST_n          :   in  std_logic;                            -- reset					
          iIRDA           :   in  std_logic;                            -- IR code input --> vindo do controle
          oDATA_READY     :   out std_logic;                            -- data ready    --> signal utilizado para auxílio do algoritmo
          oDATA           :   out std_logic_vector (31 downto 0)        -- decode data output   --> vetor de 32 bits com as informações do controle protocoladas
        );
  end component;


  component ircontrol is -- VHDL criado para controlar o que cada botão fará no programa. 
    port(
          bits    :   in  std_logic_vector (7 downto 0);  -- 8 bits recebidos
          way     :   out std_logic;                      -- caminho 1 ou caminho 2
          sentido :   out std_logic;                      -- sentido 1 ou sentido 2
          speed   :   out std_logic_vector (3 downto 0);  -- velocidade da minhoca
          pause   :   out std_logic                       -- pausa o funcionamento da minhoca
        );
  end component;



  -----------------------------------------------------------------------------------------------------------------------
  ------------------------------------- SIGNALs -------------------------------------------------------------------------

  signal data_ready   :   std_logic;                          -- sinal para auxílio à leitura de cada botão
  signal hex_data     :   std_logic_vector (31 downto 0);     -- Responsável por reconhecer cada botão do controle. 
  signal clk          :   std_logic;                          -- clock 

  -----------------------------------------------------------------------------------------------------------------------


  -- O KEY CODE está presente nas 8 penúltimas posições do vetor oriundo do subprograma IR_RECEIVE

  
  -----------------------------------------------------------------------------------------------------------------------
  ------------------------------------- BEGIN ---------------------------------------------------------------------------
  begin

    
    ------------------------------------- SUBs -------------------------------------------------------------------------
    
    sub1    :   pll1        port map   (clock_50, clk);   -- Subprograma disponibilizado pela Intel Corporation

    sub2    :   IR_RECEIVE  port map   (  -- Subprograma disponibilizado pela Intel Corporation
                                          clk,        -- 50 Mhz
                                          push,       -- reset
                                          in_IR,      -- Y15 sinal recebido do controle
                                          data_ready, -- Sinal para auxílio do decodificador
                                          hex_data    -- Saída de 32 bits para identificar cada botão do controle
                                        );

    sub3   :   ircontrol    port map    (hex_data(23 downto 16), way, sentido, speed, pause); -- Os 8 penúltimos bits estão nas posições 23 downto 16


end main ; -- main