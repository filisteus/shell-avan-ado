#!/bin/bash
VARIAVEL=8;
if test "$VARIAVEL" -gt 10
then
echo "é maior que 10"
else
echo "é menor que 10"
fi

#Há um atalho para o test , que é o comando [. Ambos são exatamente o mesmo comando, porém usar o [ deixa o if mais parecido com o formato tradicional de  outras linguagens

VARIAVEL=$1;
if [ "$VARIAVEL" -gt 10 ]
then
echo "é maior que 10"
else
echo "é menor que 10"
fi
#O elif constitui a terceira opção para uma condição, seria uma continuação do if, veja o exemplo de como usá-lo, nesse exemplo vou utilizá-lo com o test e com seu atalho o [ ] , pois o mesmo será adicionado ao nosso meuscript.sh, e no final do curso iremos ver como ele ficará

VARIAVEL=$1;
if [ "$VARIAVEL" -gt 10 ]
then
echo "é maior que 10"
elif test "$VARIAVEL" -lt 10
then
echo "é menor que 10"
else
echo "é 10"
fi
#O case é para controle de fluxo, tal como é o if. Mas enquanto o if testa expressões não exatas, o case vai agir de acordo com os resultados exatos. Vamos ver um exemplo com case baseado no exemplo do if,elif e else anterior (abre com case e fecha com esac, não esquecer de fechar senão dá erro)
case $VARIAVEL in
 10) echo "é 10" ;;
 9) echo "é 9" ;;
 7|8) echo "é 7 ou 8" ;;
 *) echo "é menor que 6 ou maior que 10" ;;
esac
