# IR Controlled Worm on FPGA - Minhoca Controlada por Controle Remoto em FPGA 


### Este trabalho foi desenvolvido por:
### - Jaderson Rosa dos Santos 
### - Marcos Alves dos Santos 

## Descrição Rápida: 

### Projeto de uma minhoca de 6 segmentos presente em 8 displays (de 7 segmentos), com 2 caminhos previamente definidos, controlada por um controle remoto (infravermelho), disponibilizado pela placa FPGA DE2-115. 

### Projeto criado em VHDL, com algumas partes em Verilog. 

### Projeto criado para obtenção da nota máxima na avaliação da disciplina "Análise e Projeto de Sistemas Lógicos Programáveis" do curso de Engenharia Elétrica da UFSM, Campus Cachoeira do Sul. 

# 30/09/2019



## Proposta de Projeto: A imagem a seguir mostra o que foi solicitado pelo professor para que fosse desenvolvido. 

![enter image description here](https://github.com/mrcsantos1/IR-Controlled-Worm-on-FPGA/blob/master/proposta_solicitada.png?raw=true) 

## O que foi projetado e implementado neste trabalho: 

![enter image description here](https://github.com/mrcsantos1/IR-Controlled-Worm-on-FPGA/blob/master/proposta_desenvolvida.png?raw=true) 

## Esquema lógico deste projeto: A imagem a seguir mostra o esquema lógico desenvolvido neste trabalho. 

![enter image description here](https://github.com/mrcsantos1/IR-Controlled-Worm-on-FPGA/blob/master/logica_projeto.jpg?raw=true)

## Um dos grandes desafios que nosso grupo enfrentou foi realizar o controle através de um controle remoto. Isso não foi solicitado, mas propomos isto para melhorar o projeto, deixá-lo ainda mais desafiador e legal, e para solucionar um problema que encontramos (esse problema é mostrado adiante)! 

## Parte da lógica que aprendemos para lidar com o infra_red é apresentado na imagem a seguir. Esta parte do projeto foi desenvolvida em VERILOG, as demais foram desenvolvidas em VHDL. 

![enter image description here](https://github.com/mrcsantos1/IR-Controlled-Worm-on-FPGA/blob/master/infra_red.png?raw=true)


## O problema que estávamos enfrentado foi devido às mudanças de frequência dos sinais da placa. Nós criamos algumas velocidades diferentes para a minhoca se locomover. Ao alterar essas velocidades, ocorria um problema que atrapalhava o bom funcionamento do projeto. 

## A imagem a seguir mostra este problema. 


![enter image description here](https://github.com/mrcsantos1/IR-Controlled-Worm-on-FPGA/blob/master/problema_enfrentado.png?raw=true)


## A imagem a seguir mostra o diagrama completo do projeto. Este diagrama é gerado automaticamente pelo Quartus a partir do código (software da intel utilizado para as simulações em VHDL). 

![enter image description here](https://github.com/mrcsantos1/IR-Controlled-Worm-on-FPGA/blob/master/circuito_completo.png?raw=true)


## Para maiores detalhes, a apresentação realizada está disponível no arquivo "IR Controlled Worm on FPGA.pptx". 

# O que aprendi: 

### Seria impossível listar tudo o que aprendi com este trabalho. Simplesmente, o projeto, a análise e a execução (sem erros) deste trabalho representam alguns dos mais desafiadores para mim. 

### À época, este foi o projeto mais desafiador e legal que já fiz com programação. Hoje, representa uma das experiências mais marcantes e legais. 

### Ainda assim, é possível listar algumas skills desenvolvidas e melhoradas neste trabalho: 

- Ir além do que é solicitado e entregar mais do que é esperado. 
- Trabalho em equipe. 
- Melhorei conhecimentos em VHDL. 
- Melhorei conhecimentos em Verilog. 
- Melhorei conhecimentos em FPGA. 
- Melhorei conhecimentos em modulação e tratamento de sinais. 
- Melhorei conhecimentos em transmissão de sinais em infravermelho. 
- Melhorei organização de códigos. 
- Melhorei conhecimentos em máquinas de estados. 
- Etc. 

