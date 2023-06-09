#!/bin/bash
NUMEROS_PER_GENERAR=0

if [[ ${#} -eq 0 ]]
then
    NUMEROS_PER_GENERAR=10
elif [[ ${#} -eq 1 ]]
then
    NUMEROS_PER_GENERAR=${1}
fi

URL="https://www.random.org/integers/?num=${NUMEROS_PER_GENERAR}&min=1&max=100&col=1&base=10&format=plain&rnd=new"

##################################################################################################################
                                        #ESTADISTICAS DEL PARAMETRO#

SUMA=0
MINIM=101
MAXIM=0
for NUMERO in $(curl -s ${URL})

do
    #CALCULO DE LA SUMA
    #echo "El valor del número és ${NUMERO}"
    SUMA=$((SUMA+NUMERO))
    #CALCULO DEL MINIMO
    if [[ ${NUMERO} -lt ${MINIM} ]]
    then
    MINIM=${NUMERO}
    #CALCULO DEl MAXIMO
    elif [[ ${NUMERO} -gt ${MAXIM} ]]
    then
    MAXIM=${NUMERO}
    fi
done
echo "SUMA=${SUMA}"
echo "MINIM=${MINIM}"
echo "MAXIM=${MAXIM}"
MEDIA=$(echo "scale=3; ${SUMA}/${NUMEROS_PER_GENERAR}" | bc)
echo "MEDIA=${MEDIA}"
 ##################################################################################################################
                                        #BOT TELEGRAM#
TOKEN="6180835850:AAHGq84RbYrBR3TNI7tSIQd-m_8Z3CkP1nU"
ID="886784679"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

echo "Estos son los resultados"
curl -s -X POST "$URL" -d chat_id="$ID" -d text="El minimo es ${MINIM}, el maximo es ${MAXIM}, la suma es ${SUMA} y la media es ${MEDIA}"