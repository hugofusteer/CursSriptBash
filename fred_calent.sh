#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))

numero() {
    if (($1 < $adivina)); then
        echo "Fred!"
    elif (($1 > $adivina)); then
        echo "Calent!"
    else
        echo "Eureka!"
        exit
    fi
}

intents=3
for ((i=1; i<=intents; i++)); do
    read -p "Introduce un número del 1 al 10: " numero_correcte
    numero $numero_correcte
done

echo "El nombre que havies d'adivinar era: ${adivina}"