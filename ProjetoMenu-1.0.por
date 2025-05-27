programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	inclua biblioteca Matematica --> m
	inclua biblioteca Calendario --> c	
	
	funcao inicio()
	{
		inteiro opcao = 0
		faca
		{
			limpa()
			//1) mostrar as opçoes
			escreva("\n============================")
			escreva("\n****** Menu Principal ******")
			escreva("\n============================\n")
			escreva("[1] Calculos\n")
			escreva("[2] Entrevista\n")
			escreva("[3] Compara números\n")
			escreva("[4] Par ou impar\n")
			escreva("[5] Ante/Sucessor\n")
			escreva("[6] Fim")
			escreva("\n============================\n")
			//2) receber a escolha do usuario
			escreva("Digite sua opção: ")
			leia(opcao)
			//3)decidir o que fazer
			escolha(opcao)
			{
				caso 1:
					Calculos()
					pare
					
				caso 2:
					Entrevista()
					pare

				caso 3:
					Compara_numeros()
					pare
				
				caso 4:
					Par_impar()
					pare
				
				caso 5:
					Ante_suce()
					pare

				caso 6: 
					escreva("\nVocê escolheu encerrar o programa")
					u.aguarde(4000)
					limpa()				
					pare
				caso contrario: //nda
					escreva("\n***Opção inválida***\n")	
					u.aguarde(3000)
					pare
			}
		}enquanto(opcao != 6)
	}
	//fecha função inicio
	funcao Calculos()
	{ 
	
 	real primeiroNumeroDivisao, segundoNumeroDivisao , divisao,entradaBasePotencia, entradaExpoentePotencia, potencia, entradaRaizQuadrada, calculoRaizQuadrada, todasRaizQuadradaPrimeiro, todasRaizQuadradaSegundo,
 	todasMultiplicacao, todasDivisao, todasEntradaPrimeiro, todasEntradaSegundo, todasSubtracao, todasSoma, todasPotencia, todasPotenciaDois
 	inteiro primeiroNumeroMultiplicacao, segundoNumeroMultiplicacao, multiplicacao = 0, primeiroNumeroSubtracao, segundoNumeroSubtracao, subtracao, primeiroNumeroSoma,
	segundoNumeroSoma, soma, n9, n10, tabu, tab = 0, numeroTabuada, x
	cadeia nome = "", resposta, Continuar = "", menuCalc = "", operacao = ""

	limpa()
	
	faca	
	{	
		operacao = ""
		
		escreva("\n=========================")
		escreva("\n****** Cálculos ******")
		escreva("\n=========================\n")
		escreva("[1] Operação específica\n")
		escreva("[2] Todas as operações\n")
		escreva("[3] Tabuada (1 a 10)\n")
		escreva("[4] Tabuada de um número\n")
		escreva("[5] Voltar ao Menu")
		escreva("\n=========================\n")

		escreva("\nDigite sua opção: ")
		leia(menuCalc)
		
		se(menuCalc == "1" )
		{	
			limpa()
			
			escreva("================================")
			escreva("\nQual operação deseja efetuar?\n")
			escreva("================================\n")
			escreva(" [1] Multiplicação\n")
			escreva(" [2] Divisão\n")
			escreva(" [3] Subtração\n")
			escreva(" [4] Soma\n")
			escreva(" [5] Potência\n")
			escreva(" [6] Raiz Quadrada\n")
			escreva(" [7] Voltar Ao Menu\n")
			escreva("================================\n")
	
			escreva("\nDigite sua opção: ")
			leia(operacao)
		}
		
		se(operacao == "1")
		{	
			limpa()
			
			escreva("===========================\n")
			escreva("Operação de Multiplicação\n")
			escreva("===========================\n")
			
			escreva("Primeiro número: ")
			leia(primeiroNumeroMultiplicacao)
	
			escreva("Segundo número: ")
			leia(segundoNumeroMultiplicacao)
	
			multiplicacao = primeiroNumeroMultiplicacao * segundoNumeroMultiplicacao
	
			escreva("\nO resultado de " + primeiroNumeroMultiplicacao + " x " + segundoNumeroMultiplicacao + " é: " +  multiplicacao + "\n")
			u.aguarde(2500)
		}
	
		se(operacao == "2")
		{
			limpa()
			
			escreva("========================\n")
			escreva("Operação de Divisão\n")
			escreva("========================\n")
			
			escreva("Primeiro número: ")
			leia(primeiroNumeroDivisao)
	
			escreva("Segundo número: ")
			leia(segundoNumeroDivisao)
		
			divisao = primeiroNumeroDivisao / segundoNumeroDivisao
	
			escreva("\nO resultado de " + primeiroNumeroDivisao + " / " + segundoNumeroDivisao + " é: " + divisao + "\n")
			u.aguarde(2500)
		}
	
		se(operacao == "3")
		{
			limpa()
			escreva("========================\n")		
			escreva("Operação de Subtração\n")
			escreva("========================\n")
			
			escreva("Primeiro número: ")
			leia(primeiroNumeroSubtracao)
	
			escreva("Segundo número: ")
			leia(segundoNumeroSubtracao)
	
			subtracao = primeiroNumeroSubtracao - segundoNumeroSubtracao
		 
			escreva("\nO resultado de " + primeiroNumeroSubtracao + " - " + segundoNumeroSubtracao + " é: " + subtracao + "\n")
			u.aguarde(2500)
		}
		
		se(operacao == "4")
		{
			limpa()
			
			escreva("====================\n")
			escreva("Operação de Soma\n")
			escreva("====================\n")
			
			escreva("Primeiro número: ")
			leia(primeiroNumeroSoma)
	
			escreva("Segundo número: ")
			leia(segundoNumeroSoma)
	
			soma = primeiroNumeroSoma + segundoNumeroSoma
	
			escreva("\nO resultado de " + primeiroNumeroSoma + " + " + segundoNumeroSoma + " é: " + soma + "\n")
			u.aguarde(2500)
		}
	
		se(operacao == "5")
		{
			limpa()
			
			escreva("========================\n")
			escreva("Operação de Potência\n")
			escreva("========================\n")
			
			escreva("Informe a base: ")
			leia(entradaBasePotencia)
	
			escreva("Informe o expoente: ")
			leia(entradaExpoentePotencia)
	
			potencia = m.potencia(entradaBasePotencia, entradaExpoentePotencia)
	
			escreva("\nA potência de base " + entradaBasePotencia + " e expoente " + entradaExpoentePotencia + " é " + potencia + "\n")
			u.aguarde(2500)
		}
	
		se(operacao == "6")
		{
			limpa()
			
			escreva("============================\n")
			escreva("Operação de Raiz Quadrada\n")
			escreva("============================\n")
			
			escreva("Insira um número: ")
			leia(entradaRaizQuadrada)
	
			calculoRaizQuadrada = m.raiz(entradaRaizQuadrada, 2.0)
	
			escreva("\nA raiz quadrada de " + entradaRaizQuadrada + " é: " + calculoRaizQuadrada + "\n")
			u.aguarde(2500) 
		}

		se(operacao == "7")
		{
			escreva("Voltando para o Menu...")
			u.aguarde(2000)

			pare
		}
		
		se(menuCalc == "2")
		{
			limpa()
			escreva("=====================\n")
			escreva("Todas as operações\n")
			escreva("=====================\n")
	
			escreva("Insira um número: ")
			leia(todasEntradaPrimeiro)
	
			escreva("Insira outro número: ")
			leia(todasEntradaSegundo)
	
			todasMultiplicacao = todasEntradaPrimeiro * todasEntradaSegundo
			todasDivisao = todasEntradaPrimeiro / todasEntradaSegundo
			todasSubtracao = todasEntradaPrimeiro - todasEntradaSegundo
			todasSoma = todasEntradaPrimeiro + todasEntradaSegundo
			todasPotencia = m.potencia(todasEntradaPrimeiro, 2.0)
			todasPotenciaDois = m.potencia(todasEntradaSegundo, 2.0)
			todasRaizQuadradaPrimeiro = m.raiz(todasEntradaPrimeiro, 2.0)
			todasRaizQuadradaSegundo = m.raiz(todasEntradaSegundo, 2.0)
	
			escreva("\nO número " + todasEntradaPrimeiro + " x " + todasEntradaSegundo +  " = " + todasMultiplicacao + "\n")
			u.aguarde(2500)
					
			escreva("\nO número " + todasEntradaPrimeiro + " / " + todasEntradaSegundo +  " = " + todasDivisao + "\n")
			u.aguarde(2500)
	
			escreva("\nO número " + todasEntradaPrimeiro + " - " + todasEntradaSegundo +  " = " + todasSubtracao + "\n")
			u.aguarde(2500)
	
			escreva("\nO número " + todasEntradaPrimeiro + " + " + todasEntradaSegundo +  " = " + todasSoma + "\n")
			u.aguarde(2500)
	
			escreva("\nO número " + todasEntradaPrimeiro + " elevado ao quadrado = " + todasPotencia + "\n")
			u.aguarde(2500)
	
			escreva("\nO número " + todasEntradaSegundo + " elevado ao quadrado = " + todasPotenciaDois + "\n")
			u.aguarde(2500)
	
			escreva("\nA Raiz quadrada de " + todasEntradaPrimeiro + " = " + todasRaizQuadradaPrimeiro + "\n")
			u.aguarde(2500)
	
			escreva("\nA Raiz quadrada de " + todasEntradaSegundo + " = " + todasRaizQuadradaSegundo + "\n")
			u.aguarde(2500)
		}
		
		se(menuCalc == "3")
		{
			limpa()
			escreva("======================\n")
			escreva("Tabuada (1 a 10)\n")
			escreva("======================\n")
			escreva("\n")
		
			para(inteiro numeroVariavelUm = 1 ; numeroVariavelUm <=10 ; numeroVariavelUm++)
			{
				para(inteiro numeroBase = 1 ; numeroBase <=5 ; numeroBase++)
				{
					escreva(numeroVariavelUm +" x " + numeroBase + " = " + numeroVariavelUm*numeroBase + "\t" )
				}
					escreva("\n")
			}
			
			escreva("\n")
			
			para(inteiro numeroVariavelSeis = 1 ; numeroVariavelSeis <=10 ; numeroVariavelSeis++)
			{
	
				para(inteiro numeroBaseDois = 6 ; numeroBaseDois <=10  ; numeroBaseDois++)
				{
					escreva(numeroVariavelSeis + " x " + numeroBaseDois + " = " + numeroVariavelSeis*numeroBaseDois + "\t")
				}
					escreva("\n")
			}

	 		u.aguarde(2500)
		}	
			
		se(menuCalc == "4")
		{
			limpa()
			
			escreva("\n****Tabuada Específica****\n")
			escreva("\n")
			
			faca
			{
				
				escreva("Digite o número da tabuada que deseja: ")
				leia(numeroTabuada)
	
			}enquanto(numeroTabuada <= 0)
			para(inteiro primeiroNumeroTabuada = numeroTabuada, multiplicadorNumeroTabuada = 1 ; multiplicadorNumeroTabuada <= 10; multiplicadorNumeroTabuada++)
			{
				
				escreva(primeiroNumeroTabuada, " * ", multiplicadorNumeroTabuada, " = ", primeiroNumeroTabuada * multiplicadorNumeroTabuada,"\n")
			
			}

			u.aguarde(2500)
		}
	
		se(menuCalc == "5")
		{
			limpa()
			
			escreva("\nVoltando para o menu...")
			u.aguarde(3000)
	
			pare
		}
		
			escreva("\nDeseja Continuar? \n(Sim/Não): ")
			leia(Continuar)
		
			limpa()
		
	}enquanto(t.caixa_alta(Continuar) == "SIM" )
	
	se(t.caixa_alta(Continuar) == "NÃO" ou t.caixa_alta(Continuar) == "NAO" ou t.caixa_alta(Continuar) == "NN")
	{	
		limpa()
		
		escreva("Ok, voltando para o menu principal!")
		u.aguarde(2000)
	}
	
	}
	//fim função calculos
	funcao Entrevista()
	{
	
	cadeia  nome , local , escola , nomeEscola = "", trabalho , profissao = "" , filho = "",  
	entradaQuantidadeFilhos = "", continuar = "", menuEntrevista
	inteiro anoEntrada = 0, anoCalculo, anoDois = 0, mesEntrada, mesAtual = c.mes_atual(), anoAtual = c.ano_atual()
	
	limpa()
	
	faca{

		escreva("\n=========================")
		escreva("\n***** Entrevista *****")
		escreva("\n=========================\n")
		escreva("[1] Continuar em Entrevista\n")
		escreva("[2] Voltar ao Menu")
		escreva("\n==========================\n")

		escreva("\nDigite sua opção: ")
		leia(menuEntrevista)

		limpa()

		se(menuEntrevista != "2" e menuEntrevista != "1" )
		{	
			limpa()
			
			escreva("\nOpção inválida! Tente novamente.\n")
			u.aguarde(2000)
			
			pare
		}
		
		se(menuEntrevista == "1")
		{	
			escreva("\nOlá, qual é o seu nome?: ")
			leia(nome)
			
			escreva("\nE onde você mora?: ")
			leia(local)
		
			escreva("\nVocê estuda?: ")
			leia(escola)
			
			se(t.caixa_alta(escola) == "SIM" ou t.caixa_alta(escola) == "SS" ou t.caixa_alta(escola) == "S")
			{
				escreva("\nOnde você estuda?: ")
				leia(nomeEscola)	
			}
			
			escreva("\nVocê trabalha ou já trabalhou?: ")
			leia(trabalho)
			
			se(t.caixa_alta(trabalho) == "SIM" ou t.caixa_alta(trabalho) == "SS" ou t.caixa_alta(trabalho) == "S")
			{
				escreva("\nQual sua profissão?: ")
				leia(profissao)	
			}
			
			escreva("\nEm que ano você nasceu?: ")
			leia(anoEntrada)


			se(anoEntrada <=1913 e anoEntrada >=2026)
			{
					limpa()
					
					escreva("\nInsira uma data de nascimento válida.\n")
					u.aguarde(3000)
					
					pare
			}
			
			
			escreva("\nE qual foi o mês?: \n(Escreva de 01 a 12): ")
			leia(mesEntrada)

			se(mesEntrada >= 13 ou mesEntrada <=0)
			{
				limpa()

				escreva("\nInsira um mês válido.\n")
				u.aguarde(3000)

				pare
			}
			anoCalculo =  anoAtual - anoEntrada
		
			se(mesAtual <= mesEntrada)
			{
				anoDois = anoCalculo - 1 			
			}
				
			se(anoDois >=16)
			{
				escreva("\nVocê tem filhos?: ")
				leia(filho)
				
			se(t.caixa_alta(filho) == "SIM" ou t.caixa_alta(filho) == "SS" ou t.caixa_alta(filho) == "S")
			{
				escreva("\nQuantos filhos você tem?: ")
				leia(entradaQuantidadeFilhos)
			}
			
			}
			
				limpa()
			
			escreva("\nAgora já sei que seu nome é " + nome + "\n")
			u.aguarde(2500)
				
			escreva("\nQue mora em " + local + "\n")
			u.aguarde(2500)
	
			se(t.caixa_alta(escola) == "SIM" ou t.caixa_alta(escola) == "SS" ou t.caixa_alta(escola) == "S")
			{
				escreva("\nQue estuda na escola " + nomeEscola + "\n")
				u.aguarde(2500)
			}
		
			senao
			{
				escreva("\nQue não estuda\n")
				u.aguarde(2500)
			}
		
			se(t.caixa_alta(trabalho) == "SS" ou t.caixa_alta(trabalho) == "SIM" ou t.caixa_alta(trabalho) == "S")
			{
				escreva("\nExerce a profissão de " + profissao + "\n")
				u.aguarde(2500) 
			}
			
			senao
			{
				escreva("\nQue não trabalha\n")
				u.aguarde(2500)
			}
				escreva("\nE tem " + anoDois + " anos\n")
				u.aguarde(2500)
			
			se(t.caixa_alta(filho) == "SIM" ou t.caixa_alta(filho) == "SS" ou t.caixa_alta(filho) == "S")
			{
				escreva("\nE você tem " + entradaQuantidadeFilhos + " filhos\n")
				u.aguarde(2500)
			}
			senao
			{
				escreva("\nE que não tem filhos\n")
				u.aguarde(2500)
			}
	
				escreva("\nDeseja continuar? (Sim/Não): ")
				leia(continuar)
		}
		
		se(menuEntrevista == "2")
		{
			limpa()
			
			escreva("\nVoltando para o menu...")
			u.aguarde(2000)
		
		}	
		
	}enquanto(t.caixa_alta(continuar) == "SIM" ou t.caixa_alta(continuar) == "SS")
	
	se(t.caixa_alta(continuar) == "NÃO" ou t.caixa_alta(continuar) == "NAO")
	{
		limpa()
		
		escreva("\nOk, voltando para o menu principal!")
		u.aguarde(2000)
	}
	
	}
	//fim função entrevista
	funcao Compara_numeros()
	{
		
	inteiro numeroPrimeiro, numeroSegundo
	cadeia maior, menor, num, continuar = "", menuComparaNumeros

	limpa()
	faca
	{
		limpa()
		
		escreva("\n============================")
		escreva("\n****** Compara Números ******")
		escreva("\n============================\n")
		escreva("[1] Continuar em Compara números\n")
		escreva("[2] Voltar ao Menu")
		escreva("\n============================\n")

		escreva("\nDigite sua opção: ")
		leia(menuComparaNumeros)

		se(menuComparaNumeros != "2" e menuComparaNumeros != "1")
		{	
			limpa()
		
			escreva("\nOpção inválida! Tente novamente.\n")
			u.aguarde(2000)
			
			pare
		}
		
		se(menuComparaNumeros == "1")
		{
			limpa()
			
			escreva("Informe um número: ")
			leia(numeroPrimeiro)
	
			escreva("Informe outro número: ")
			leia(numeroSegundo)
	
			se(numeroPrimeiro == numeroSegundo)
			{
				limpa()
				
				escreva("Os números são iguais" + " (" + numeroPrimeiro + ")\n")
				u.aguarde(2500)
			}
			
			se(numeroPrimeiro > numeroSegundo)
			{
				limpa()
				
				escreva("O número " + numeroPrimeiro + " é o maior, e o menor é " + numeroSegundo + "\n" )
				u.aguarde(2500)
			}
			
			se(numeroPrimeiro < numeroSegundo)
			{
				limpa()
					
				escreva("O número " + numeroSegundo + " é maior, e o menor é " + numeroPrimeiro + "\n" )
				u.aguarde(2500)
			}
					
				escreva("\nDeseja continuar? (Sim/Não): ")
				leia(continuar)
		}
		
		se(menuComparaNumeros == "2")
		{
			limpa()
			
			escreva("\nVoltando para o menu...")
			u.aguarde(3000)
			
			pare	
		}
		
	}enquanto(t.caixa_alta(continuar) == "SIM" ou t.caixa_alta(continuar) == "SS")
	
	se(t.caixa_alta(continuar) == "NÃO" ou t.caixa_alta(continuar) == "NAO" ou t.caixa_alta(continuar) == "NN" ou t.caixa_alta(continuar) == "N")
	{
		limpa()
		
		escreva("Ok, voltando para o menu principal!")
		u.aguarde(2000)
	}
	
	}
	//fim função compara numeros
	funcao Par_impar()
	{
	cadeia resposta, continuar = "", menuParImpar
	inteiro numeroEntrada
	
	limpa()
	
	faca{
		escreva("\n============================")
		escreva("\n***** Par e Impar *****")
		escreva("\n============================\n")
		escreva("[1] Continuar em Par e Impar\n")
		escreva("[2] Voltar ao Menu")
		escreva("\n============================\n")

		escreva("\nDigite sua opção: ")
		leia(menuParImpar)

		limpa()

		se(menuParImpar != "2" e menuParImpar != "1")
		{	
			limpa()
		
			escreva("\nOpção inválida! Tente novamente.\n")
			u.aguarde(2000)
			
			pare
		}
		
		se(menuParImpar == "1")
		{
			escreva("Digite o número: ")
			leia(numeroEntrada)
		
			se(numeroEntrada %2 == 0)
			{
				limpa()
				
				escreva("\nO número " + numeroEntrada + " é par.\n")
				u.aguarde(2500)
			}
			senao
			{
				limpa()
				
				escreva("O número " + numeroEntrada + " é impar.\n")
				u.aguarde(2500)
			}
			
			escreva("\nDeseja continuar? (Sim/Não): ")
			leia(continuar)
			
			limpa()
		}
		se(menuParImpar == "2")
		{
			limpa()
			
			escreva("Voltando para o menu...")
			u.aguarde(3000)
				
			pare	
		}
		
	}enquanto(t.caixa_alta(continuar) == "SIM" ou t.caixa_alta(continuar) == "SS")
	
	se(t.caixa_alta(continuar) == "NÃO" ou t.caixa_alta(continuar) == "NAO" ou t.caixa_alta(continuar) == "NN" ou t.caixa_alta(continuar) == "N")
	{
		limpa()
		
		escreva("Ok, voltando para o menu principal!")
		u.aguarde(2000)
	}
	}
	//fim função par impar
	funcao Ante_suce() 
	{
	inteiro numeroEntrada, saidaNumeroAntecessor, saidaNumeroSucessor
	cadeia saidaNumeroEntrada, continuar = "", menuAntecessorSucessor

	limpa()

	faca{
		escreva("\n============================")
		escreva("\n***Antecessor e Sucessor***")
		escreva("\n============================\n")
		escreva("[1] Continuar em Antecessor e Sucessor\n")
		escreva("[2] Voltar ao Menu")
		escreva("\n============================\n")

		escreva("\nDigite sua opção: ")
		leia(menuAntecessorSucessor)

		limpa()

		se(menuAntecessorSucessor != "2" e menuAntecessorSucessor != "1" )
		{	
			limpa()
			
			escreva("\nOpção inválida! Tente novamente.\n")
			u.aguarde(2000)
			
			pare
		}


		se(menuAntecessorSucessor == "1")
		{
			escreva("\nInsira um número: ")
			leia(numeroEntrada)

			limpa()
			
			
			saidaNumeroAntecessor = numeroEntrada - 1
			saidaNumeroSucessor = numeroEntrada + 1
	
			escreva("\nO numero escolhido foi: " + numeroEntrada + "\n")
			u.aguarde(2500)
			
			escreva("\nSeu antecessor é " + saidaNumeroAntecessor + "\n")
			u.aguarde(2500)
			
			escreva("\nE seu sucessor é " + saidaNumeroSucessor + "\n")
			u.aguarde(2500)
	
			escreva("\nDeseja continuar? (Sim/Não): ")
			leia(continuar)
		}

		se(menuAntecessorSucessor == "2")
		{
			limpa()
			
			escreva("\nVoltando para o menu...")
			u.aguarde(3000)
				
			pare	
		}
		
		limpa()
		
	}enquanto(t.caixa_alta(continuar) == "SIM" ou t.caixa_alta(continuar) == "SS")
	
	se(t.caixa_alta(continuar) == "NÃO" ou t.caixa_alta(continuar) == "NAO" ou t.caixa_alta(continuar) == "NN")
		{
			limpa()
			
			escreva("\nOk, voltando para o menu principal!")
			u.aguarde(2000)
		}
	}
	// fim função antecessor/sucessor
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14340; 
 * @DOBRAMENTO-CODIGO = [63, 365, 632, 708];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */