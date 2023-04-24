#!/bin/bash 

read -p "Introdueix X: " X

if [ ${X} -le 5 ]
then 
    echo "Has introduït un número menor o igual que 5"
else
    echo "Has introduït un número més gran que 5"
fi

