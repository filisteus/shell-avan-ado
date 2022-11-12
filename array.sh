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

