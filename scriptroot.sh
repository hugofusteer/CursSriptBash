#!/bin/bash

#Script executable només per root

if [[ ${UID} -ne 0 ]]
then
    echo "Usage ${0}"
    echo
    echo "Has de ser root"
    exit 1
fi

read -p "Introdueix el nom d'usuari: " USER_NAME

echo "Creant l'usuari ${USER_NAME}"