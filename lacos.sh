#!/bin/bash
#A maioria das línguas tem o conceito de loops. Se quisermos repetir uma tarefa vinte vezes, não queremos digitar o código “vinte vezes”, com talvez uma ligeira mudança a cada vez.

#while
contador=0;
while [ $contador -lt 10 ]; do
echo O valor de contador = $contador
(( contador = contador + 1 ))
done

#until
COUNTER=20
until [ $COUNTER -lt 10 ]; do
echo COUNTER $COUNTER
let COUNTER-=1
done

#break e exit

for i in $(seq 1 10);
do
if [[ "$i" < "8" ]]; then
continue
fi
if [[ "$i" > "9" ]]; then
break;
fi
echo $i;
done
exit 0;

#Para criar vários diretórios

for runlevel in 0 1 2 3 4
      do
      mkdir rc$(runlevel}.d
      done

