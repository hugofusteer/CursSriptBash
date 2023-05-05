git sta#!/bin/bash
#ESCRIU UN SCRIPT QUE RECORRI EL FITXER numeros.txt i 
#mostri QUANTES LINEAS TE EL FITXER I QUE CALCULI LA MITJANA ARITMÈTICA DELS NÚMEROS
NUMERO_LINIES=0
SUMA=0
for linia in $(cat numeros.txt)
do
    #INCREMENTAM EL NÚMERO DE LINIES
    NUMERO_LINIES=$((NUMERO_LINIES+1))
    SUMA=$((SUMA+linia))
done
echo "Número de linies: ${NUMERO_LINIES}"
echo "La suma vaL: ${SUMA}"
#MITJANA = SUMA DIVIDIT EL NUMERO DE LINIES
MITJANA=$(echo "scale=3; ${SUMA}/${NUMERO_LINIES}" | bc)
echo " La mitjana val ${MITJANA}"
