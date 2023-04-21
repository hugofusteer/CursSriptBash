#!/bin/bash

X=${1}
echo "X val ${X}"

Y=${2}
echo "Y val ${Y}"

DIVISIO=$(echo "scale=2; ${X}/${Y}" | bc)
echo "El resultat es ${DIVISIO}"