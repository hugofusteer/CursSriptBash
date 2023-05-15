#!/bin/bash

# Escriu les comandes que s'indiquen a cada punt i executa l'script.
# Recorda que és necessari que aquest tingui permisos d'execució.
# començau cada apartat amb un echo indicatiu del que feu (com a l'exemple)

# 0) Exemple: mostra el nom de l'usuari actual:
# echo "EXERCICIC 0"
# echo "---------------------------------------------------"
# echo "Nom de l'usuari: "
# whoami
# echo 

# 1) Mostra un missatge per pantalla amb el texte "El meu primer script"
# echo " El meu primer script"

# 2) Mostra un missatge per pantalla amb la data actual i el format: Avui es dia 18/05/2021
#    Recorda l'us de la comanda: date
#    Pots obtenir ajuda amb: date --help o man date, per exemple amb date +"Any %Y" obtenim el missatge: Any 2021
# echo "Avui es dia $(date +"%d/%m/%Y")"


# 3) Mostra un missatge per pantalla amb l'hora actual i el format: Son les 15:20h
#    usa la mateixa comanda: date
# echo "Son les $(date +"%H:%M")h"

# 4) Mostra el contingut del directori actual
# ls

# 5) Mostra el contingut del directori temporal /tmp
# ls /tmp

# 6) Crea dos directoris nous a /tmp anomenats prova i copies
# mkdir /tmp/prova
# mkdir /tmp/copies

# 7) Dins el directori prova del pas anterior, crea la següent estructura:
#  /tmp/prova/ingressos
#  /tmp/prova/despeses

# mkdir -p /tmp/prova/ingressos
# mkdir  -p /tmp/prova/despeses
# tree /tmp/prova


# 8) Modifica els permisos del directori d'ingressos per que tothom hi pugui accedir, llegir i escriure
# chmod 777 /tmp/prova/ingressos

# 9) Modifica els permisos del directori despeses per que només el propietari hi tingui accés
# chmod 700 /tmp/prova/despeses

# 10) Fes una copia del directori /tmp/prova a /tmp/copia
# cp -r /tmp/prova /tmp/copia

# 11) *Opcional*
#     Fes una copia del directori /tmp/prova a /tmp/copies/18052021_1525
#     El directori de destí ha de tenir la data i la hora del moment en que s'executa l'script
#     Usa la comanda cp -r /tmp/prova /tmp/copies/$(date +"<FORMAT>"), canvia <FORMAT> pel format de la data corresponent, igual que als punts anteriors.

# mkdir /tmp/copies/$(date +"%d%m%Y_%H%M")
# cp -r /tmp/prova /tmp/copies/$(date +"%d%m%Y_%H%M")

# 12) Mostra el contingut del directori /tmp/copia en forma d'arbre
# tree /tmp/copia

# 13) Mostra el contingut del directori /tmp/copies en forma d'arbre
# tree /tmp/copies

# 14) Esborra els directoris /tmp/copies i /tmp/prova i tot el seu contingut
# rm -r /tmp/copies /tmp/prova

# 15) Mostra l'espai lliure del disc dur. (Les unitat han de ser human-readable: 10GB, 123Mb, etc...)
#     Usa la comanda df, pots obtenir ajuda amb df --help o man df 
# df -h

# 16) Mostra l'informació de la memoria del sistema. (Les unitat han de ser human-readable: 10GB, 123Mb, etc...)
#     Usa la comanda free, pots obtenir ajuda amb free --help o man free
# free -h

# 17) Crea un nou script, al directori actual, anometat system_info.sh, que mostri informació del disc dur i de la memoria RAM usant les comandes anteriors.
#     Crida aquest nou script que acabes de crear.
# echo "Informació del disc dur:"
# df -h
# echo "Informació de la memòria RAM:"
# free -h

# 18) Mostra el contingut de l'script anterior
#     Usa la comadna cat
# cat system_info.sh

# 19) Mostra tots els fitxers del directori actual que acabin amb la l'extensió .sh
#     Has d'usar la comanda cat
# ls *.sh

# 20) *Opcional*
#     Fes el mateix que abans, pero usant la comanda find. Pots obtenir ajuda amb find --help o man find.
# find . -name "*.sh"

# Fi. Acabam l'script retornant un 0, axiò vol dir que l'script ha acabat correctament.
exit 0