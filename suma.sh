#!/bin/bash

NUM_PARAM=${#}
##echo "NUM_PARAM ${NUM_PARAM}"
if [[ ${NUM_PARAM} -ne 2 ]]
then
    echo "ERROR: Has d'introduïr dos paràmetres"
    exit 1
X=${1}
echo "X val ${X}"

Y=${2}
echo "Y val ${Y}"

SUMA=$((X+Y))
echo "El resultat es ${SUMA}"

fi