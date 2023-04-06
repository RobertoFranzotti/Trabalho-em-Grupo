programa
{
	inclua biblioteca Util
	inteiro matriz[10][12] = {{0,0,0,0,0,0,0,0,0,0,0,0},
						{0,0,0,0,0,0,0,0,0,0,0,0},
						{0,0,0,0,0,0,0,0,0,0,0,0},
						{0,0,0,0,0,0,0,0,0,0,0,0},
						{0,0,0,0,0,0,0,0,0,0,0,0},
						{0,0,0,0,0,0,0,0,0,0,0,0},
						{0,0,0,0,0,0,0,0,0,0,0,0},
						{0,0,0,0,0,0,0,0,0,0,0,0},
						{0,0,0,0,0,0,0,0,0,0,0,0},
						{0,0,0,0,0,0,0,0,0,0,0,0}}, opcao
	funcao inicio()
	{	
		opcoes()
	}


//==================================//
//			Funcao menu		 //
//==================================//
	funcao menu(){
		escreva("      KINOPLEX", "\n")
		escreva("====================", "\n")
		escreva("1- Listar Acentos", "\n")
		escreva("2- Resevar Acento", "\n")
		escreva("3- Remover Acento", "\n")
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
			caso 1: listarAssentos()
			pare
			caso 2: reservarAssentos()
			pare
			caso 3: removerAssento()
			pare
			caso contrario: escreva("Opção inválida!")
			Util.aguarde(2000)
			pare
		}
		}enquanto(opcao != 0)
	}
//==================================//
//		Funcao Listar Acentos	 //
//==================================//
	funcao listarAssentos(){
		escreva("0  1  2  3  4  5  6  7  8  9  10 11\n")
		escreva("___________________________________\n")
		para(inteiro filheira=0; filheira < 10; filheira++){
			para(inteiro coluna=0; coluna < 12; coluna++){
				escreva(matriz[filheira][coluna], "  ")
				Util.aguarde(10)
				
				se(coluna == 11){
					escreva("|")
				}
			}
			escreva("  ",filheira,"\n")
		}
		escreva("\n")
	}



//==================================//
//		Funcao Reservar Acento	 //
//==================================//
	funcao reservarAssentos(){
            inteiro f
            inteiro a
            caracter continuar = 'S'
            
            faca{
            escreva("Digite um fileira do assento de 0 a 11 em números: ")
            leia(f)
            enquanto (f > 10 ou f < 0) {
                escreva("\nNúmero de fileira inválido!")
                escreva("\nPor favor, digite novamente: ")
                leia(f)
                }
            escreva("Digite um número do assento de 0 a 9: ")
            leia(a)
            enquanto (a > 12 ou a < 0) {
                escreva("\nNúmero de acento inválido!")
                escreva("\nPor favor, digite novamente: ")
                leia(a)
                }
            se (matriz[f][a] == 1) {
                escreva("\nAssento ocupado :(")
                escreva("\nVoltando ao menu!")
                }
            senao {
                matriz[f][a] = 1
                escreva("\nAssento reservado!")
                escreva("\nVoltando ao menu!")
                }
                escreva("\n", "Mostrando lugar", "\n")
                listarAssentos()
            
            escreva("Deseja reservar outro acento? (S/s)")
			leia(continuar)
		}enquanto(continuar == 'S' ou continuar == 's')
}

//==================================//
//		Funcao Remover Acento	 //
//==================================//
	funcao removerAssento(){
		inteiro f
            inteiro a
            caracter continuar = 'S'
            
            faca{
            escreva("Digite um fileira do assento de 0 a 11 em números:")
            leia(f)
            enquanto (f > 10 ou f < 0) {
                escreva("\nNúmero de fileira inválido!")
                escreva("\nPor favor, digite novamente.")
                leia(f)
                }
            escreva("Digite um número do assento de 0 a 9:")
            leia(a)
            enquanto (a > 12 ou a < 0) {
                escreva("\nNúmero de acento inválido!")
                escreva("\nPor favor, digite novamente: ")
                leia(a)
                }
            se (matriz[f][a] == 1) {
                matriz[f][a] --
                }
            senao {
                matriz[f][a] = 0
                escreva("\nO Assento ja esta vazio!")
                Util.aguarde(1000)
                escreva("\nVoltando ao menu!")
                }
                escreva("\n", "Mostrando Reservas", "\n")
                listarAssentos()
            
            escreva("Deseja reservar outro acento? (S/s)")
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
 * @POSICAO-CURSOR = 3490; 
 * @DOBRAMENTO-CODIGO = [3];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */