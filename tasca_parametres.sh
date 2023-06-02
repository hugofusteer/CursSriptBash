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

# El número de paràmetres
NUMERO_PARAMETRES=${#}

if [[ ${NUMERO_PARAMETRES} -eq 0 ]]; then
    usage
fi

# Afegir tots els paràmetres en una variable i mostrar-los per pantalla
TOTS_ELS_PARAMETRES=${*}
echo "TOTS ELS PARÀMETRES: ${TOTS_ELS_PARAMETRES}"

# Generar una contrasenya aleatòria per a cada usuari passat com a paràmetre
for USER_NAME in ${@}
do
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"

    # Crear l'usuari amb el home
    useradd -m ${USER_NAME}
    
    # Comprovar si ha hagut alguna errada
    if [[${?} -ne 0]]
    then
        #Comprovam si funciona
        echo  "Errada creant usuari"
        exit 1
    fi

    # Comprovar si s'ha creat bé
    if [[ $? -eq 0 ]]; then
        echo "L'usuari ${USER_NAME} ha estat creat amb èxit"
    else
        echo "No s'ha pogut crear l'usuari ${USER_NAME}"
    fi

    # Canviar el password
    echo ${USER_NAME}:${PASSWORD} | chpasswd

    # Comprovar si el canvi de password ha anat bé
    if [[ $? -eq 0 ]]; then
        echo "El password de l'usuari ${USER_NAME} ha estat canviat amb èxit"
    else
        echo "No s'ha pogut canviar el password de l'usuari ${USER_NAME}"
    fi

    # Fer que l'usuari hagi de canviar el password al primer login
    chage -d 0 ${USER_NAME}
done