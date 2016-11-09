#!/bin/bash
#
# Trabalho 3 da matéria Desenvolvimento para Redes de Computadores
# Criado por Michele Pasini França
# Data de criação 09 de novembro de 2016



principal() {           # Função principal do programa
    clear               # limpa a tela
	
	echo "[1] Mostra a localização atual do usuário no sistema de arquivos"  #Imprimi as opções na tela 
	echo "[2] Mostrar o tipo de um arquivo" 
	echo "[3] Criar um diretório" 
	echo "[4] Apagar um diretório não vazio"
	echo "[5] Ler 2 números e indicar qual é o maior deles e qual é o menor"
	echo "[6] Exibir as últimas linhas de um arquivo"
	echo "[7] Exibir as primeiras linhas de um arquivo"
	echo "[8] Mostrar a localização de um comando específico"
	echo "[9] Mostrar um diretório em formato de árvore"
	echo "[10] Copiar um arquivo para um outro diretório"
	echo "[11] Mover um arquivo para outro diretório"
	echo "[0] Digite 0 para sair"
	echo -n "Qual opção deseja?"
	read opcao
	
	# Aqui deve-se informar a ação que será tomada quando cada opção for acionada 
	
	case $opcao in 
	
		1)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			
			funcao_1

			;;     # Encerra esta opção do comando case 
		
		2)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			funcao_2
			;;     # Encerra esta opção do comando case

		3)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			funcao_3
			;;     # Encerra esta opção do comando case 	

		4)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			funcao_4
			;;     # Encerra esta opção do comando case 

		5)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			funcao_5
			;;     # Encerra esta opção do comando case

		6)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			funcao_6
			;;     # Encerra esta opção do comando case

		7)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
			clear 
			funcao_7
			;;     # Encerra esta opção do comando case
			
		8)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
			clear 
			funcao_8
			;;     # Encerra esta opção do comando case
			
			
		9)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
			clear 
			funcao_9
			;;     # Encerra esta opção do comando case
		
		10)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
			clear 
			funcao_10
			;;     # Encerra esta opção do comando case

		11)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
			clear 
			funcao_11
			;;     # Encerra esta opção do comando case
			
		0) #Função para sair do script_name
		
		
		clear
        exit ;;
			
	  
        *)              # esta opçao existe para caso o usuário digite um 
                        # valor diferente dos informados
        clear
		echo "Opção inválida" 
		read pause 
		principal  #Volta ao menu principal do programa 
	;;    
	esac		

}

#Aqui iniciam as funções 

funcao_1() {			#Função da opção 1 

		clear 
		echo "A sua localização do sistema de arquivos é:" 
		pwd 			#Comando que exibe a localização
		read pause
		principal
			
			}

			
funcao_2() {              #Função da opção 2
		
		clear
		echo "Digite o caminho completo\nome do arquivo"
		read arquivo  							#Captura a localização do arquivo 
		echo "O tipo do arquivo é:"
		file $arquivo							#Exibe o tipo do arquivo
		read pause		
		principal
}

funcao_3() {			#Função da opção 3

		clear
		echo "Digite o diretório que deseja criar"
		read diretorio_criar 	#Captura o diretório que deve ser criado 
		mkdir $diretorio_criar 	#Exclui o diretório 
		echo "Diretório criado com sucesso"
		read pause
		principal

}

funcao_4() {			#Função da opção 4

		clear
		echo "Digite o diretório que deseja excluir"
		read diretorio_excluir 	#Captura o diretório que deve ser excluído 
		rm -rf $diretorio_excluir 	#Exclui o diretório 
		echo "Diretório excluido com sucesso"		
		read pause
		principal

}

funcao_5() {			#Função da opção 5

		clear
		echo "Digite o primeiro número"
		read numero_1 	#Captura o primeiro número
		
		echo "Digite o segundo número"
		read numero_2	#Captura o primeiro número
		
		#Faz um if para compara os dois números 
		
			if [ $numero_1 -eq $numero_2 ]  #Verifica se os números são iguais
				then
					echo "Os números são iguais"
					
			else
				if [ $numero_1 -gt $numero_2 ]  #Verifica se o primeir número é maior que o segundo
				then 
					echo "O número $numero_1 é maior que o $numero_2"
						
						else
							echo "o número $numero_2 é maior que o $numero_1"
							
			fi
			fi

		read pause
		principal 
		
}

funcao_6() { 		#Função da opção 6

			clear
			echo "Digite o arquivo que deseja ler"
			read $ler_arquivo							# captura o arquivo 
			echo "Quantas linhas finais deseja visualiar?"
			read $numer_linhas_finais 					# captura o número de linhas 
			tail -$numer_linhas_finais $ler_arquivo 	#exibe o resultado 
			
			read pause
			principal

}


funcao_7() { 		#Função da opção 7

			clear
			echo "Digite o arquivo que deseja ler"
			read $ler_arquivo_2							# captura o arquivo 
			echo "Quantas linhas finais deseja visualiar?"
			read $numer_linhas_inicias					# captura o número de linhas 
			head -$numer_linhas_finais $ler_arquivo 	#exibe o resultado 
			
			read pause
			principal

}

funcao_8() { 		#Função da opção 8

			clear
			echo "Digite o comando que deseja verificar"
			read $comando						# captura o comando 
			whereis $comando 					#exibe o local do sistema onde o comando é localizado 
			
			read pause
			principal

}

funcao_9() { 		#Função da opção 9

			clear
			echo "Informe o diretorio que deseja visualizar"
			read $diretorio_tree						# captura o diretorio 
			tree -d $diretorio_tree						#exibe o diretório em árvore
			
			read pause
			principal

}

funcao_10() { 		#Função da opção 10

			clear
			echo "Informe o local/arquivo que deseja copiar"
			read $arq_org						#Captura o arquivo 
			echo "Digite o local para onde o arquivo deve ser copiado"						
			read $local_dst						#Captura o local de destino 
			cp $arq_org $local_dst				#Move o arquivo 
			
			read pause
			principal

}

funcao_11() { 		#Função da opção 11

			clear
			echo "Informe o local/arquivo que deseja mover"
			read $arq_org_2						#Captura o arquivo 
			echo "Digite o local para onde o arquivo deve ser movido"						
			read $local_dst_2						#Captura o local de destino 
			mv $arq_org $local_dst				#Move o arquivo 
			
			read pause
			principal

}
		
			
			#Chama a função principal do programa
		
		principal

}






























		
