#!/bin/bash

# Nom del script
echo "Nom del script: $0"
################################

# PATH i filename del script
echo "PATH i filename del script: $(dirname $0)/$(basename $0)"
####################################################################

# Número de paràmetres
num_parametres=$#
echo "Nombre de paràmetres: $num_parametres"
##############################################

# Comprova si hi ha almenys un paràmetre
if [ $num_parametres -eq 0 ]; then
  echo "El primer paràmetre és obligatori i serà USER_NAME."
  exit 1
fi
####################################################################

# Paràmetres
parametres=("$@")
echo "Paràmetres: ${parametres[*]}"

####################################################################

# Generació de contrasenyes per a cada usuari
for user in "${parametres[@]}"; do
  password=$(openssl rand -base64 12 | sha256sum)
  echo "Usuari: $user - Contrasenya: $password"
done
