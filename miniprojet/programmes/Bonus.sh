#!/usr/bin/env bash

if [  $# -ne 1 ]
then
	echo "Le script à besoin d'un argument"
	exit 1
fi

#Récupération de l'argument
urls=$1

#Lecture du fichier
while read -r line; do

Cn=$(echo "$line" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]')

word="word $Cn"

done < $urls


