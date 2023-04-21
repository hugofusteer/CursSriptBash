#!/bin/bash

#Como funcionan los parametros
PARAMETRE0=${0}
#${0} ens indica el nom de l'executable
echo "el parametre 0 és ${0}"

#${1} es el primer parametre posicional
echo "el parametre 1 és ${1}"

#Podem escriure fins a 9 (verificar)
echo "el parametre 2 és ${2}"

parametre_sostingut=${#}
echo "el parametre ${parametre_sostingut} indica..."