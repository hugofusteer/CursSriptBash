#!/bin/bash
function usage(){
    echo "INSTRUCCIONS: sudo ./create_users.sh USER_NAME [USER_NAME ... ]"
    exit 1
}

# Comprova si l'usuari és root
if [[ $EUID -ne 0 ]]; then
   echo "Aquest script ha de ser executat com a root" 
   exit 1
fi

#Pasar usuaris com a parametres.
for USER_NAME in "$@"; do
    # Esborrar un usuari
    deluser --remove-home "$USER_NAME"
done
