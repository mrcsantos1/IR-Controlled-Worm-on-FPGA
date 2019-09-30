library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ways_Minhoca is
    port(
            clk         :   in  std_logic;                              -- Clock modulado
            pause       :   in std_logic;                               -- Pausa ou não a máquina
            reset       :   in std_logic;                               -- Rseta a máquina
            sentido     :   in std_logic;                               -- Altera o sentido da máquina
            caminho     :   in std_logic;                               -- Escolhe o caminho
            disp  		:   buffer std_logic_vector (55 downto 0);      -- Saída para os 8 displays
            led_posic   :   out std_logic_vector (9 downto 0)           -- Leds das posições da minhoca
        );
end ways_Minhoca;

architecture main of ways_Minhoca is

    
-- Estados da máquina
    type minhoca is (   pos1, pos2, pos3, pos4, pos5, 
                        pos6, pos7, pos8, pos9, pos10,
                        pos11, pos12, pos13, pos14, pos15,
                        pos16, pos17, pos18, pos19, pos20, 
                        pos21, pos22, pos23, pos24, pos25,
                        pos26, pos27, pos28, pos29, pos30, 
                        pos31, pos32, pos33, pos34, pos35,
                        pos36, pos37, pos38, pos39, pos40
                    );

    begin


        
    process (clk, pause, reset, sentido, caminho)

        variable  estado  : minhoca;

            begin
                if (pause = '1') then

                    if ((clk'event) and (clk = '1')) then	-- if síncrono
                        case estado is
                            when pos1 =>  
                                if sentido = '1' then 
                    
                                    estado  :=  pos2;
                                else 
                                    estado := pos40;
                                end if;
                        
                            when pos2 =>
                                if sentido = '1' then 
                                    estado  :=  pos3;
                                else
                                    estado := pos1;
                                end if;

                            when pos3 =>
                                if sentido = '1' then 
                                    estado  :=  pos4;
                                else
                                    estado := pos2;
                                end if;
                                    
                            when pos4 =>
                                if sentido = '1' then 
                                    estado  :=  pos5;
                                else
                                    estado := pos3;
                                end if;

                            when pos5 =>  
                                if sentido = '1' then 
                                    estado  :=  pos6;
                                else
                                    estado := pos4;
                                end if;
                    
                            when pos6 =>
                                if sentido = '1' then 
                                    estado  :=  pos7;
                                else
                                    estado := pos5;
                                end if;
                                    
                            when pos7 =>
                                if sentido = '1' then 
                                    estado  :=  pos8;
                                else
                                    estado := pos5;
                                end if;
                                    
                            when pos8 =>
                                if sentido = '1' then 
                                    estado  :=  pos9;
                                else
                                    estado := pos7;
                                end if;

                            when pos9 =>
                                if sentido = '1' then 
                                    estado  :=  pos10;
                                else
                                    estado := pos8;
                                end if;

                            when pos10  =>
                                if sentido = '1' then 
                                    estado  :=  pos11;
                                else
                                    estado := pos9;
                                end if;

                            when pos11  =>
                                if sentido = '1' then
                                    estado  :=  pos12;
                                else
                                    estado := pos10;
                                end if;
                                    
                            when pos12  =>
                                if sentido = '1' then 
                                    estado  :=  pos13;
                                else
                                    estado := pos11;
                                end if;

                            when pos13  =>
                                if sentido = '1' then 
                                    estado  :=  pos14;
                                else
                                    estado := pos12;
                                end if;
                                    
                            when pos14  =>
                                if sentido = '1' then 
                                    estado  :=  pos15;
                                else
                                    estado := pos13;
                                end if;
                                    
                            when pos15  =>
                                if sentido = '1' then 
                                    estado  :=  pos16;
                                else
                                    estado := pos14;
                                end if;
                                    
                            when pos16  =>
                                if sentido = '1' then 
                                    estado  :=  pos17;
                                else
                                    estado := pos15;
                                end if;
                                    
                            when pos17  =>
                                if sentido = '1' then 
                                    estado  :=  pos18;
                                else
                                    estado := pos16;
                                end if;
                                    
                            when pos18  =>
                                if sentido = '1' then 
                                    estado  :=  pos19;
                                else
                                    estado := pos17;
                                end if;
                                    
                            when pos19  =>
                                if sentido = '1' then 
                                    estado  :=  pos20;
                                else
                                    estado := pos18;
                                end if;
                                    
                            when pos20  =>
                                if sentido = '1' then 
                                    estado  :=  pos21;
                                else
                                    estado := pos19;
                                end if;
                                    
                            when pos21 =>  
                                if sentido = '1' then 
                                    estado  :=  pos22;
                                else
                                    estado := pos20;
                                end if;
                                    
                            when pos22 =>
                                if sentido = '1' then 
                                    estado  :=  pos23;
                                else
                                    estado := pos21;
                                end if;
                                
                            when pos23 =>
                                if sentido = '1' then 
                                    estado  :=  pos24;
                                else
                                    estado := pos22;
                                end if;
                                    
                            when pos24 =>
                                if sentido = '1' then 
                                    estado  :=  pos25;
                                else
                                    estado := pos23;
                                end if;
                                    
                            when pos25 =>  
                                if sentido = '1' then 
                                    estado  :=  pos26;
                                else
                                    estado := pos24;
                                end if;
                                    
                            when pos26 =>
                                if sentido = '1' then 
                                    estado  :=  pos27;
                                else
                                    estado := pos25;
                                end if;
                                    
                            when pos27 =>
                                if sentido = '1' then 
                                    estado  :=  pos28;
                                else
                                    estado := pos26;
                                end if;
                                
                                    
                            when pos28 =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos29;
                                else
                                    estado := pos27;
                                end if;
                                
                                    
                            when pos29 =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos30;
                                else
                                    estado := pos28;
                                end if;
                                    
                                        
                            when pos30  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos31;
                                else
                                    estado := pos29;
                                end if;
                                    
                                        
                            when pos31  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos32;
                                else
                                    estado := pos30;
                                end if;
                                    
                                        
                            when pos32  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos33;
                                else
                                    estado := pos31;
                                end if;
                                    
                                        
                            when pos33  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos34;
                                else
                                    estado := pos32;
                                end if;
                                    
                                        
                            when pos34  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos35;
                                else
                                    estado := pos33;
                                end if;
                                    
                                        
                            when pos35  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos36;
                                else
                                    estado := pos34;
                                end if;
                                    
                                        
                            when pos36  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos37;
                                else
                                    estado := pos35;
                                end if;
                                    
                                        
                            when pos37  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos38;
                                else
                                    estado := pos36;
                                end if;
                                        
                            when pos38  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos39;
                                else
                                    estado := pos37;
                                end if;
                                    
                                        
                            when pos39  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos40;
                                else
                                    estado := pos38;
                                end if;
                                    
                                        
                            when pos40  =>
                            
                                if sentido = '1' then 
                                    estado  :=  pos1;
                                else
                                    estado := pos39;
                                end if;
                                    
                        end case;  
                    end if;

                end if;

            if reset = '0' then  -- assíncrono
                estado := pos1;
            end if;
            
            if caminho = '1' then 

                case estado is  
                    when pos1   	=>  disp  <=  "11101111110111111011111101111110111111011111111111111111";
                    when pos2   	=>  disp  <=  "11111111110111111011111101111110111111011111101111111111"; 
                    when pos3   	=>  disp  <=  "11111111111111111011111101111110111111011111101111110111"; 
                    when pos4   	=>  disp  <=  "11111111111111111111111101111110111111011111101111100111";
                    when pos5   	=>  disp  <=  "11111111111111111111111111111110111111011111101111000111";
                    when pos6   	=>  disp  <=  "11111111111111111111111111111111111111011111101110000111"; 
                    when pos7   	=>  disp  <=  "11111111111111111111111111111111111111111111101110000101"; 
                    when pos8   	=>  disp  <=  "11111111111111111111111111111111111111111111111100000101"; 
                    when pos9   	=>  disp  <=  "11111111111111111111111111111111111111111011111100001101"; 
                    when pos10  	=>  disp  <=  "11111111111111111111111111111111111111110011111100011101"; 
                    when pos11      =>  disp  <=  "11111111111111111111111111110111111111110011111100111101"; 
                    when pos12      =>  disp  <=  "11111111111111111111111111110111101111110011111101111101"; 
                    when pos13      =>  disp  <=  "11111111111111111111111111110111001111110011111101111111";
                    when pos14      =>  disp  <=  "11111111111111111111111111110110001111110011111111111111"; 
                    when pos15      =>  disp  <=  "11111111111111111111111111110110001111010111111111111111"; 
                    when pos16      =>  disp  <=  "11111111111111111111111111110110001111011111101111111111";
                    when pos17   	=>  disp  <=  "11111111111111111111111111111110001111011111101111110111";
                    when pos18  	=>  disp  <=  "11111111111111111111111111111110011111011111101111100111"; 
                    when pos19   	=>  disp  <=  "11111111111111111111111111111110111111011111101111000111";
                    when pos20   	=>  disp  <=  "11111111111111111111111111111111111111011111101110000111";
                    when pos21   	=>  disp  <=  "11111111111111111111111111111111111111111111101110000101"; 
                    when pos22   	=>  disp  <=  "11111111111111111111111111111111111111111111111100000101"; 
                    when pos23   	=>  disp  <=  "11111111111111111111111111111111111111111111110100001101"; 
                    when pos24   	=>  disp  <=  "11111111111111111111111111111111111111011111110100011101"; 
                    when pos25  	=>  disp  <=  "11111111111111111111111111111111111111001111110100111101"; 
                    when pos26      =>  disp  <=  "11111111111111111111111111111111110111001111110101111101"; 
                    when pos27      =>  disp  <=  "11111111111111111111111111111111100111001111110101111111"; 
                    when pos28      =>  disp  <=  "11111111111111111111101111111111100111001111110111111111"; 
                    when pos29      =>  disp  <=  "11111111111111111111101111011111100111001111111111111111"; 
                    when pos30      =>  disp  <=  "11111111111111111111101110011111100111101111111111111111"; 
                    when pos31      =>  disp  <=  "11111111111111111011101110011111100111111111111111111111";
                    when pos32   	=>  disp  <=  "11111111110111111011101110011111101111111111111111111111";
                    when pos33   	=>  disp  <=  "11101111110111111011101110011111111111111111111111111111"; 
                    when pos34   	=>  disp  <=  "11100111110111111011111110011111111111111111111111111111"; 
                    when pos35   	=>  disp  <=  "11100011110111111011111110111111111111111111111111111111"; 
                    when pos36   	=>  disp  <=  "01100011110111111011111111111111111111111111111111111111"; 
                    when pos37   	=>  disp  <=  "01100010110111111111111111111111111111111111111111111111"; 
                    when pos38   	=>  disp  <=  "01100010111111011111111111111111111111111111111111111111"; 
                    when pos39   	=>  disp  <=  "01110010111111011111101111111111111111111111111111111111"; 
                    when pos40   	=>  disp  <=  "01111010111111011111101111110111111111111111111111111111"; 
                end case;

                case estado is  
                    when pos1   	=>  led_posic <= "1111111000";
                    when pos2   	=>  led_posic <= "0111111100"; 
                    when pos3   	=>  led_posic <= "0011111110"; 
                    when pos4   	=>  led_posic <= "0001111111";
                    when pos5   	=>  led_posic <= "0000011111";
                    when pos6   	=>  led_posic <= "0000001111";
                    when pos7   	=>  led_posic <= "0000000111";
                    when pos8   	=>  led_posic <= "0000000111";
                    when pos9   	=>  led_posic <= "0000001111";
                    when pos10  	=>  led_posic <= "0000001111"; 
                    when pos11  	=>  led_posic <= "0000011111"; 
                    when pos12  	=>  led_posic <= "0000011111"; 
                    when pos13  	=>  led_posic <= "0000011110"; 
                    when pos14  	=>  led_posic <= "0000011100"; 
                    when pos15  	=>  led_posic <= "0000011100"; 
                    when pos16  	=>  led_posic <= "0000011110"; 
                    when pos17  	=>  led_posic <= "0000011111"; 
                    when pos18  	=>  led_posic <= "0000011111"; 
                    when pos19  	=>  led_posic <= "0000011111"; 
                    when pos20  	=>  led_posic <= "0000001111"; 
                    when pos21  	=>  led_posic <= "0000000111"; 
                    when pos22  	=>  led_posic <= "0000000111"; 
                    when pos23  	=>  led_posic <= "0000000111"; 
                    when pos24  	=>  led_posic <= "0000001111"; 
                    when pos25  	=>  led_posic <= "0000001111"; 
                    when pos26  	=>  led_posic <= "0000011110"; 
                    when pos27  	=>  led_posic <= "0000011110"; 
                    when pos28  	=>  led_posic <= "0000111100"; 
                    when pos29  	=>  led_posic <= "0000111100"; 
                    when pos30  	=>  led_posic <= "0000111000"; 
                    when pos31  	=>  led_posic <= "0001110000"; 
                    when pos32  	=>  led_posic <= "0111110000"; 
                    when pos33  	=>  led_posic <= "1111100000"; 
                    when pos34  	=>  led_posic <= "1111100000"; 
                    when pos35  	=>  led_posic <= "1111100000"; 
                    when pos36  	=>  led_posic <= "1110000000"; 
                    when pos37  	=>  led_posic <= "1100000000";
                    when pos38  	=>  led_posic <= "1110000000"; 
                    when pos39  	=>  led_posic <= "1111000000";
                    when pos40  	=>  led_posic <= "1111100000";
                end case;

                    
                
            else

                case estado is 
                    when pos1   		=>  disp  <=  "11011001100111111111011111111111111111111111111111111111";
                    when pos2   		=>  disp  <=  "11011101100111101111011111111111111111111111111111111111"; 
                    when pos3   		=>  disp  <=  "11011111100111101111001111111111111111111111111111111111";
                    when pos4   		=>  disp  <=  "11011111100111101111000111111111111111111111111111111111";
                    when pos5   		=>  disp  <=  "11111111101111101111000111111111110111111111111111111111";
                    when pos6   		=>  disp  <=  "11111111111111101111000111111101110111111111111111111111"; 
                    when pos7   		=>  disp  <=  "11111111111111101111100111111101110111011111111111111111"; 
                    when pos8   		=>  disp  <=  "11111111111111111111100111111101110110011111111111111111";
                    when pos9   		=>  disp  <=  "11111111111111111111110111111101110110011111111101111111"; 
                    when pos10  		=>  disp  <=  "11111111111111111111111111111101110110011110111101111111";  
                    when pos11          =>  disp  <=  "11111111111111111111111111111101111110011110111100111111";  
                    when pos12   	    =>  disp  <=  "11111111111111111111111111111111111110011110111100011111";   
                    when pos13   	    =>  disp  <=  "11111111111111111111111111111111111110111110111100001111"; 
                    when pos14    	    =>  disp  <=  "11111111111111111111111111111111111111111110111100000111"; 
                    when pos15      	=>  disp  <=  "11111111111111111111111111111111111111111110101110000111"; 
                    when pos16   	    =>  disp  <=  "11111111111111111111111111111111111111111111100110000111"; 
                    when pos17   	    =>  disp  <=  "11111111111111111111111111111111111111111011100111000111"; 
                    when pos18  		=>  disp  <=  "11111111111111111111111111111111111111110011100111100111"; 
                    when pos19   	    =>  disp  <=  "11111111111111111111111111110111111111110011100111110111"; 
                    when pos20   	    =>  disp  <=  "11111111111111111111111111110111101111110011100111111111"; 
                    when pos21   	    =>  disp  <=  "11111111111111111111111111100111101111110011110111111111";  
                    when pos22   	    =>  disp  <=  "11111111111111111111111110100111101111110011111111111111"; 
                    when pos23   	    =>  disp  <=  "11111111111111111011111110100111101111110111111111111111"; 
                    when pos24   	    =>  disp  <=  "11111111111111111001111110100111101111111111111111111111";  
                    when pos25  		=>  disp  <=  "11111111111110111001111110101111101111111111111111111111";  
                    when pos26    	    =>  disp  <=  "11111111111100111001111110101111111111111111111111111111";
                    when pos27    	    =>  disp  <=  "11111110111100111001111110111111111111111111111111111111"; 
                    when pos28    	    =>  disp  <=  "11111110111100011001111111111111111111111111111111111111"; 
                    when pos29    	    =>  disp  <=  "11111110111100001101111111111111111111111111111111111111";  
                    when pos30    	    =>  disp  <=  "11111110111100001111011111111111111111111111111111111111";
                    when pos31    	    =>  disp  <=  "11111110111100001111011111111111111111111111111111111111";
                    when pos32   	    =>  disp  <=  "11111110111100001111011111111111111111111111111111111111";
                    when pos33   	    =>  disp  <=  "01111111111100001111011111111111111111111111111111111111"; 
                    when pos34   	    =>  disp  <=  "01111011111100101111011111111111111111111111111111111111";  
                    when pos35   	    =>  disp  <=  "01111001111100111111011111111111111111111111111111111111";
                    when pos36   	    =>  disp  <=  "01011001111100111111111111111111111111111111111111111111";
                    when pos37   	    =>  disp  <=  "01011001110101111111111111111111111111111111111111111111"; 
                    when pos38   	    =>  disp  <=  "01011001110101111111111111111111111111111111111111111111"; 
                    when pos39   	    =>  disp  <=  "01011001110101111111111111111111111111111111111111111111"; 
                    when pos40   	    =>  disp  <=  "01011001110101111111111111111111111111111111111111111111"; 
                end case;
                

            case estado is  
                when pos1   	=>  led_posic <= "1110000000";
                when pos2   	=>  led_posic <= "1110000000"; 
                when pos3   	=>  led_posic <= "1111100000"; 
                when pos4   	=>  led_posic <= "1111100000";
                when pos5   	=>  led_posic <= "0111110000";
                when pos6   	=>  led_posic <= "0011110000";
                when pos7   	=>  led_posic <= "0011110000";
                when pos8   	=>  led_posic <= "0001111000";
                when pos9   	=>  led_posic <= "0000111000";
                when pos10  	=>  led_posic <= "0000011100"; 
                when pos11  	=>  led_posic <= "0000011110"; 
                when pos12  	=>  led_posic <= "0000001111"; 
                when pos13  	=>  led_posic <= "0000001111"; 
                when pos14  	=>  led_posic <= "0000000111"; 
                when pos15  	=>  led_posic <= "0000000111"; 
                when pos16  	=>  led_posic <= "0000000111"; 
                when pos17  	=>  led_posic <= "0000001111"; 
                when pos18  	=>  led_posic <= "0000001111"; 
                when pos19  	=>  led_posic <= "0000011111"; 
                when pos20  	=>  led_posic <= "0000011110"; 
                when pos21  	=>  led_posic <= "0000111100"; 
                when pos22  	=>  led_posic <= "0001111000"; 
                when pos23  	=>  led_posic <= "0011111000"; 
                when pos24  	=>  led_posic <= "0011110000"; 
                when pos25  	=>  led_posic <= "0111110000"; 
                when pos26  	=>  led_posic <= "0111100000"; 
                when pos27  	=>  led_posic <= "0111100000"; 
                when pos28  	=>  led_posic <= "0110000000"; 
                when pos29  	=>  led_posic <= "0110000000"; 
                when pos30  	=>  led_posic <= "0110000000"; 
                when pos31  	=>  led_posic <= "0110000000"; 
                when pos32  	=>  led_posic <= "1110000000"; 
                when pos33  	=>  led_posic <= "1110000000"; 
                when pos34  	=>  led_posic <= "1110000000"; 
                when pos35  	=>  led_posic <= "1100000000"; 
                when pos36  	=>  led_posic <= "1100000000"; 
                when pos37  	=>  led_posic <= "1100000000";
                when pos38  	=>  led_posic <= "1100000000"; 
                when pos39  	=>  led_posic <= "1100000000";
                when pos40  	=>  led_posic <= "1100000000";
            end case;
        end if;
    end process;

end main ; -- main