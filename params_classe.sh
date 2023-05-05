#!/bin/bash

# FOR ESTRUCTURA DE CONTROL PER ITERAR
SUMA=0
PRODUCTE=1
for I in ${@}
do
    SUMA=$((SUMA+I))
    PRODUCTE=$((PRODUCTE*I))
done
echo "La suma val ${SUMA}"
echo "El producte val ${PRODUCTE}"