#!/bin/bash
# Meu comentario
OLA="Olá, Shell!"
echo $OLA
mundo=("Shell Script" "Bash" "GNU" "Linux" "Debian")
echo ${mundo[0]}
#mostra o total de elementos do array
echo ${#mundo[@]}
#imprime um intervalo entre o intervalo dos elementos
echo ${mundo[@]:1:3}
# Funções com return
#return exibirá antes dele, local variavellocal = Só será exibida dentro da função. variavelglobal =só será exibida dentro da funcao 
MinhaFuncao(){
	OLA="Ola, mundo!"
	echo "Eu passando $# parâmetro(s)"
	return
	echo "Outra coisa"
	
}
MinhaFuncao $@
# A constante não altera o seu valor
declare -r MinhaConstante='Isso é uma constante'
#exemplo= MinhaConstante="agora é isso" , a constante não será alterada
echo $MinhaConstante

#unset minhafuncao apaga a funcao assim como unset constante apaga a constante
#source chama outro arquivo ex:source outroscript.sh
