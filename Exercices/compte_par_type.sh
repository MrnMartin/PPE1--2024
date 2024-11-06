#!/usr/bin/bash

if [$# -ne 2 ]
then
	echo "Le script prend deux arguments exactement"
	exit 1
fi

annee=$1
typeentite=$2

if [[!  $annee =~ ^[0-9][4]$ ]] #Différent 
then
	echo "L'année doit être 4 chiffres"
	exit 2 
fi

grep $typeentite ann/$annee/*.ann | wc -l
