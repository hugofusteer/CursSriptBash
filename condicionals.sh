#!/bin/bash 
read -p "Introdueix X: " X

if [ ${X} -lt 5 ]
then 
    echo "Has introduït un número menor que 5"
elif [ ${X} -gt 5 ]
then
    echo "Has introduït un número major que 5"
else
    echo "Has introduït un número igual a 5"
fi