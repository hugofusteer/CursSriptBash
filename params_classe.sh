#!/bin/bash

# FOR ESTRUCTURA DE CONTROL PER ITERAR
SUMA=0
for I in ${@}
do
    echo${I}
    SUMA=$((SUMA+I))
done
echo "La suma val ${SUMA}"