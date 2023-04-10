programa
{
	inclua biblioteca Util
	
	inteiro quartos[21], telefone, consultasCadastradas, pessoasConsultadas, opcao, opcao2 = 0, consultas = 0, internacoes = 0
	inteiro Pediatria = 0, Cardiologista = 0, Oftamologista = 0, Dermatologista = 0
	real pediatria = 0.0, outrasEspecialidades = 0.0, valorInternacao = 0.0, lucroFinal = 0.0
	cadeia nome, especialidadeConsulta, consulta
	
	funcao inicio()
	{
		opcoes()
	}

//==================================//
//			Funcao menu		 //
//==================================//
	funcao menu(){
		escreva("============================", "\n")
		escreva("      Hospital do Zé", "\n")
		escreva("============================", "\n")
		escreva("1- Consulta Ambulatorial", "\n")
		escreva("2- Internação", "\n")
		escreva("3- Listar Quartos", "\n")
		escreva("4- Faturamento", "\n")
		escreva("0- Sair do Programa", "\n")
		escreva("============================", "\n")
		}

//==================================//
//			Funcao Opcoes		 //
//==================================//
		funcao opcoes(){
			faca{
				menu()
				escreva("Digite a opção: ")
				leia(opcao)
				limpa()
				escolha(opcao){

				caso 0: escreva("Você escolheu sair!")
				diversos()
				pare
				caso 1: consultaAmbulotorial()
				pare
				caso 2: internacao()
				pare
				caso 3: listarQuartos()
				pare
				caso 4: faturamento()
				pare
				caso contrario: escreva("Opção Inválida. Tente novamente!", "\n")
				Util.aguarde(2000)
				limpa()
				pare
			}
		}enquanto(opcao != 0)
	}	

//==================================//
//	Funcao Consulta Ambulatorial	 //
//==================================//
		funcao consultaAmbulotorial(){
			caracter continuar = 'S'
		faca{
		escreva("============================", "\n")
		escreva("      Hospital do Zé", "\n")
		escreva("============================", "\n")
		escreva("Digite seu Nome: ")
		leia(nome)
		escreva("Digite seu número de Telefone: ")
		leia(telefone)
		limpa()
		escreva("Consultas Disponíveis: ", "\n", "Pediatria - R$150.00", "\n")
		escreva("Outras consultas - R$120.00", "\n")
		escreva("\n")
		escreva("Escolha a consulta que deseja: ", "\n")
		escreva("1- Pediatria", "\n")
		escreva("2- Cardiologista", "\n")
		escreva("3- Oftamologista", "\n")
		escreva("4- Dermatologista", "\n")
		
			
				escreva("Digite a opção: ")
				leia(opcao2)
				limpa()
				escolha(opcao2){

				caso 1: Pediatria++
				pare
				caso 2: Cardiologista++
				pare
				caso 3: Oftamologista++
				pare
				caso 4: Dermatologista++
				pare
				caso contrario: escreva("Opção Inválida. Tente novamente!", "\n")
				Util.aguarde(2000)
				limpa()
				pare
			}
			
			se(consultas == 1){
				pediatria = pediatria + 150.0
				consultas++
				escreva("Consulta Marcada!", "\n")
			}senao{
				outrasEspecialidades = outrasEspecialidades + 120.0
				consultas++
				escreva("Consulta Marcada!", "\n")
			}
				escreva("Deseja reservar outra consulta? (S/s)")
				leia(continuar)
			}enquanto(continuar == 'S' ou continuar == 's')
			
			
		}
//==================================//
//			Funcao Internacao	 //
//==================================//
		funcao internacao(){

            inteiro v

          escreva("============================", "\n")
		escreva("      Hospital do Zé", "\n")
		escreva("============================", "\n")
		escreva("O valor da internação é de R$500,00\n")
		escreva("Digite seu Nome: ")
		leia(nome)
		escreva("Digite seu número de Telefone: ")
		leia(telefone)
		escreva("============================", "\n")
		limpa()
            
            faca{
            escreva("Digite o Quarto de 1 a 20: ")
            leia(v)
            enquanto (v > 21 ou v < 0) {
                escreva("\nNúmero do Quarto inválido!")
                escreva("\nPor favor, digite novamente: ")
                leia(v)
                }
           
            se (quartos[v] == 1) {
                escreva("\nQuarto ocupado :(")
                escreva("\nVoltando ao menu!")
                }
            senao {
                quartos[v] = 1
                internacoes++
                valorInternacao = valorInternacao + 500.0
                escreva("\nQuarto reservado!")
                escreva("\nVoltando ao menu!")
                }
                escreva("\n", "Mostrando Quartos", "\n")
                listarQuartos()
                pare
		}enquanto(nome != " ")		
	}
		
//==================================//
//		Funcao Listar Quartos	 //
//==================================//
		funcao listarQuartos(){

		escreva("\t Lista de Quartos\n")
		escreva("___________________________________\n")
		para(inteiro v=1; v < 21; v++){
			escreva(quartos[v], "  ")
			Util.aguarde(10)
			
				se(v == 21){
					escreva("|")
			}	escreva("  ",v,"\n")
		}
			Util.aguarde(4500)
			limpa()
		}
		
//==================================//
//			Funcao Faturamento	 //
//==================================//
		funcao faturamento(){
			calculos()
			escreva("Consultas: ", consultas, "\n")
			escreva("Internações: ", internacoes, "\n")
			escreva("Lucro Total do Hospital: ",lucroFinal, "\n")
			escreva("\n")
			Util.aguarde(2000)	
		}
		
//==================================//
//			Funcao Calculos	 //
//==================================//
		funcao calculos(){
			
			lucroFinal = pediatria + outrasEspecialidades + valorInternacao		
		}
		
//==================================//
//			Funcao Diversoss	 //
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
 * @POSICAO-CURSOR = 5374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */