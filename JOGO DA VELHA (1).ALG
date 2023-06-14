Algoritmo "Jogo da velha"

Var
   opcao,casaS, casa1, casa2, casa3, casa4, casa5, casa6, casa7, casa8, casa9:inteiro
   jogador1, jogador2:caractere

Inicio
   repita
      escreval("1 - Jogar partida")
      escreval("2 - Escolher nomes dos jogadores")
      escreval("3 - Placar atual")
      escreval("4 - Estatisticas gerais")
      escreval("5 - Sair do programa")
      leia(opcao)
      escolha(opcao)
      caso 1
         casa1 <- 1
         casa2 <- 2
         casa3 <- 3
         casa4 <- 4
         casa5 <- 5
         casa6 <- 6
         casa7 <- 7
         casa8 <- 8
         casa9 <- 9
         escreval("O nosso modo de jogo será o seguinte você escolhe a casa pelo número dela e ela será marcada com o sinal que você escolheu")
         repita
            escreval(casa1,"/",casa2,"/",casa3)
            escreval(casa4,"/",casa5,"/",casa6)
            escreval(casa7,"/",casa8,"/",casa9)
            escreval("Selecione uma casa")
            leia(casaS)
            se (casaS = 1) entao
               casa1 <- jogador
            senao
               se (casaS = 2) entao
                  casa2 <- jogador
               senao
                  se (casaS = 3) entao
                     casa3 <- jogador
                  senao
                     se (casaS = 4) entao
                        casa4 <- jogador
                     senao
                        se (casaS = 5) entao
                           casa5 <- jogador
                        senao
                           se (casaS = 6) entao
                              casa6 <- jogador
                           senao
                              se (casaS = 7) entao
                                 casa7 <- jogador
                              senao
                                 se (casaS = 8) entao
                                    casa8 <- jogador
                                 senao
                                    se (casaS = 9 entao
                                       casa9 <- jogador
                                    senao
                                       escreval("Essa casa que você selecionou não existe")
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         ate(casaS > 9)
      caso 2
         escreval("Jogador 1 digite seu nome:")
         leia(jogador1)
         escreval("Olá ",jogador1,",você ficará com o X")
         escreval("Jogador 2 digite seu nome:")
         leia(jogador2)
         escreval("Olá",jogador2,", você ficará com a O")
      caso 5
         escreval("Você saiu do programa")
   ate(opcao = 5)

Fimalgoritmo