Algoritmo "Jogo da velha"

Var
   opcao, soma, jogadorUm, jogadorDois, totalUm, totalDois, totalVelha:inteiro
   vencedor, casaS, casa1, casa2, casa3, casa4, casa5, casa6, casa7, casa8, casa9, jogador1, jogador2, jogador:caractere

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
         se ((jogador1 = "") ou (jogador2 = ""))  entao
            escreval("Jogador 1 digite seu nome:")
            leia(jogador1)
            escreval("Olá ",jogador1,",você ficará com o X")
            escreval("Jogador 2 digite seu nome:")
            leia(jogador2)
            escreval("Olá ",jogador2,", você ficará com a O")
            jogadorUm <- 0
            jogadorDois <- 0
         fimse

         escreval("Escolha a casa")
         casa1 <- "1"
         casa2 <- "2"
         casa3 <- "3"
         casa4 <- "4"
         casa5 <- "5"
         casa6 <- "6"
         casa7 <- "7"
         casa8 <- "8"
         casa9 <- "9"
         soma <- 0
         vencedor <- ""
         
         escreval(casa1,"/",casa2,"/",casa3)
         escreval(casa4,"/",casa5,"/",casa6)
         escreval(casa7,"/",casa8,"/",casa9)

         repita
            escreval("Selecione uma casa")
            leia(casaS)
            se (soma%2 = 0) entao
               jogador <- "X"
            senao
               jogador <- "O"
            fimse
            se (casaS = "1") entao
               se ((casa1 = "X") ou (casa1 = "O")) entao
                  escreval("Escolha outra casa!")
               senao
                  casa1 <- jogador
                  soma <- soma + 1
               fimse
            senao
               se (casaS = "2") entao
                  se ((casa2 = "X") ou (casa2 = "O")) entao
                     escreval("Escolha outra casa!")
                  senao
                     casa2 <- jogador
                     soma <- soma + 1
                  fimse
               senao
                  se (casaS = "3") entao
                     se ((casa3 = "X") ou (casa3 = "O")) entao
                        escreval("Escolha outra casa!")
                     senao
                        casa3 <- jogador
                        soma <- soma + 1
                     fimse
                  senao
                     se (casaS = "4") entao
                        se ((casa4 = "X") ou (casa4 = "O")) entao
                           escreval("Escolha outra casa!")
                        senao
                           casa4 <- jogador
                           soma <- soma + 1
                        fimse
                     senao
                        se (casaS = "5") entao
                           se ((casa5 = "X") ou (casa5 = "O")) entao
                              escreval("Escolha outra casa!")
                           senao
                              casa5 <- jogador
                              soma <- soma + 1
                           fimse
                        senao
                           se (casaS = "6") entao
                              se ((casa6 = "X") ou (casa6 = "O")) entao
                                 escreval("Escolha outra casa!")
                              senao
                                 casa6 <- jogador
                                 soma <- soma + 1
                              fimse
                           senao
                              se (casaS = "7") entao
                                 se ((casa7 = "X") ou (casa7 = "O")) entao
                                    escreval("Escolha outra casa!")
                                 senao
                                    casa7 <- jogador
                                    soma <- soma + 1
                                 fimse
                              senao
                                 se (casaS = "8") entao
                                    se ((casa8 = "X") ou (casa8 = "O")) entao
                                       escreval("Escolha outra casa!")
                                    senao
                                       casa8 <- jogador
                                       soma <- soma + 1
                                    fimse
                                 senao
                                    se (casaS = "9") entao
                                       se ((casa9 = "X") ou (casa9 = "O")) entao
                                          escreval("Escolha outra casa!")
                                       senao
                                          casa9 <- jogador
                                          soma <- soma + 1
                                       fimse
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
            se ((casa1 = casa2) e (casa1 = casa3)) entao
               vencedor <- casa1
            senao
               se ((casa4 = casa5) e (casa4 = casa6)) entao
                  vencedor <- casa4
               senao
                  se ((casa7 = casa8) e (casa7 = casa9)) entao
                     vencedor <- casa7
                  senao
                     se ((casa1 = casa4) e (casa1 = casa7)) entao
                        vencedor <- casa1
                     senao
                        se ((casa2 = casa5) e (casa2 = casa8)) entao
                           vencedor <- casa2
                        senao
                           se ((casa3 = casa6) e (casa3 = casa9)) entao
                              vencedor <- casa3
                           senao
                              se ((casa1 = casa5) e (casa1 = casa9)) entao
                                 vencedor <- casa1
                              senao
                                 se ((casa3 = casa5) e (casa3 = casa7)) entao
                                    vencedor <- casa3
                                 senao
                                    se (soma = 9) entao
                                       vencedor <- "V"
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse

            escreval(casa1,"/",casa2,"/",casa3)
            escreval(casa4,"/",casa5,"/",casa6)
            escreval(casa7,"/",casa8,"/",casa9)

            se (vencedor <> "") entao
               se (vencedor = "X") entao
                  escreval (jogador1, " Venceu!")
                  jogadorUm <- jogadorUm + 1
                  totalUm <- totalUm + 1
               senao
                  se (vencedor = "O") entao
                     escreval (jogador2, " Venceu!")
                     jogadorDois <- jogadorDois + 1
                     totalDois <- totalDois + 1
                  senao
                     escreval( "Deu velha!")
                     totalVelha <- totalVelha + 1
                  fimse
               fimse
            fimse
         ate((soma > 9) ou (vencedor <> ""))

      caso 2
         escreval("Jogador 1 digite seu nome:")
         leia(jogador1)
         escreval("Olá ",jogador1,",você ficará com o X")
         escreval("Jogador 2 digite seu nome:")
         leia(jogador2)
         escreval("Olá",jogador2,", você ficará com a O")
         jogadorUm <- 0
         jogadorDois <- 0

      caso 3
         se (jogadorUm = 0) entao
            escreval (jogador1," não venceu!")
         senao
            se(jogadorUm = 1) entao
               escreval (jogador1," ",jogadorUm," ponto!")
            senao
               escreval (jogador1," ",jogadorUm," pontos!")
            fimse
         fimse
         se (jogadorDois = 0) entao
            escreval (jogador2, " não venceu!")
         senao
            se (jogadorDois = 1) entao
               escreval (jogador2," ",jogadorDois," ponto!")
            senao
               escreval (jogador2," ",jogadorDois," pontos!")
            fimse
         fimse

      caso 4
         se(totalUm = 0) entao
            escreval ("X não ganhou!")
         senao
            se(totalUm = 1) entao
               escreval ("X ganhou ",totalUm," vez!")
            senao
               escreval ("X ganhou ",totalUm," vezes!")
            fimse
         fimse
         se(totalDois = 0) entao
            escreval ("O não ganhou!")
         senao
            se(totalDois = 1) entao
               escreval ("X ganhou ",totalDois," vez!")
            senao
               escreval ("X ganhou ",totalDois," vezes!")
            fimse
         fimse
         se(totalVelha = 0) entao
            escreval ("Não deu velha")
         senao
            se(totalVelha = 1) entao
               escreval ("Deu velha ",totalVelha," vez!")
            senao
               escreval ("Deu velha ",totalVelha," vezes!")
            fimse
         fimse
         
      caso 5
         escreval("Você saiu do programa")
      fimescolha
      
   ate(opcao = 5)

Fimalgoritmo