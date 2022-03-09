#!/bin/bash
LINEA="######################################################################"
echo $LINEA
echo "COMPROBANDO QUE ESTEN INSTALADOS PUTTYGEN Y PWGEN"
if [ ! `which puttygen` ]; then
    sudo apt-get install putty-tools -y
fi

if [ ! `which pwgen` ]; then
    sudo apt-get install pwgen -y
fi

#sudo apt-get install putty-tools pwgen -y
echo $LINEA

if [ "$1" != "" ]; then
	NOMBREKEY=$1
	PASSPHRASE=$(pwgen 12 1 -sB)
	echo "PASSPHRASE PARA ${NOMBREKEY}.pem y ${NOMBREKEY}.ppk"
	echo $PASSPHRASE 2>&1 | tee $NOMBREKEY.passphrase.txt
	echo $LINEA
	ssh-keygen -P $PASSPHRASE -t rsa -b 4096 -m pem -f $NOMBREKEY.pem
	puttygen $NOMBREKEY.pem -o $NOMBREKEY.ppk -O private --new-passphrase $NOMBREKEY.passphrase.txt --old-passphrase $NOMBREKEY.passphrase.txt
else
	echo "ERROR: Necesito nombre de key como argumento de este script."
	echo "Ejemplo: ./generate-keys.sh fulanitokey"
fi
echo $LINEA
