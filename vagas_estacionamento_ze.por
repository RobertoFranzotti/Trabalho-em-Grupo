programa
{
	inclua biblioteca Util
	inteiro matriz[30], opcao
	funcao inicio()
	{	
		opcoes()
	}


//==================================//
//			Funcao menu		 //
//==================================//
	funcao menu(){
		escreva("      Estacionamento do Zé", "\n")
		escreva("====================", "\n")
		escreva("1- Entrada de Veículos", "\n")
		escreva("2- Saida de Veículos", "\n")
		escreva("3- Listar Vagas", "\n")
		escreva("0- Sair do Programa", "\n")
		escreva("====================", "\n")
		}

//==================================//
//			Funcao Opcoes	    	 //
//==================================//
	funcao opcoes(){
		faca{
			menu()
			escreva("Digite a opção: ")
			leia(opcao)
			escolha(opcao){

			caso 0: escreva ("Você escolheu sair!")
			diversos()
			pare
			caso 1: entradaVeiculos()
			pare
			caso 2: saidaVeiculos()
			pare
			caso 3: listarVagas()
			pare
			caso contrario: escreva("Opção inválida!")
			Util.aguarde(2000)
			pare
		}
		}enquanto(opcao != 0)
	}
//==================================//
//		Funcao Listar Vagas 	 //
//==================================//
	funcao listarVagas(){
		escreva("___________________________________\n")
		para(inteiro i=0; i < 30; i++){
				escreva(matriz[i], "  ")
			
			escreva("  ",i,"\n")
			}
			escreva("\n")
	}



//==================================//
//	Funcao Entrada de Veiculos	 //
//==================================//
	funcao entradaVeiculos(){
            inteiro vagas
            caracter continuar = 'S'
            
            faca{
            escreva("Digite o número da Vaga de 0 a 29: ")
            leia(vagas)
            enquanto (vagas < 0 ou vagas > 29) {
                escreva("\nNúmero da Vaga inválido!")
                escreva("\nPor favor, digite novamente: ")
                leia(vagas)
                }
            se(matriz[vagas] == 1){
                escreva("\nVaga reservado!")
            	 escreva("\nVoltando ao menu!")
              	}
              	senao{ matriz[vagas] = 1
               escreva("\n", "Mostrando Vagas", "\n")
                listarVagas()
              	}
            escreva("Deseja reservar outra Vaga? (S/s)")
			leia(continuar)
		}enquanto(continuar == 'S' ou continuar == 's')
}

//==================================//
//		Funcao Saida de Veiculos  //
//==================================//
	funcao saidaVeiculos(){
            inteiro vagas
            caracter continuar = 'S'
            
            faca{
            escreva("Digite o número da Vaga de 0 a 29: ")
            leia(vagas)
            enquanto (vagas > 29 ou vagas < 0) {
                escreva("\nNúmero de Vaga inválido!")
                escreva("\nPor favor, digite novamente.")
                leia(vagas)
                }
            se (matriz[vagas] == 1) {
                matriz[vagas] --
                }
            senao {
                matriz[vagas] = 0
                escreva("\nO Vaga ja esta vazio!")
                Util.aguarde(1000)
                escreva("\nVoltando ao menu!")
                }
                escreva("\n", "Mostrando Vagas", "\n")
                listarVagas()
            
            escreva("Deseja remover outro Vaga? (S/s)")
			leia(continuar)
		}enquanto(continuar == 'S' ou continuar == 's')	
	}
//==================================//
//			Funcao Diversos	 //
//==================================//
	funcao diversos(){
		Util.aguarde(2000)
		limpa()
	}
}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3426; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */