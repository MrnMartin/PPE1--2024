#!/usr/bin/env bash

if [  $# -ne 1 ]
then
	echo "Le script à besoin d'un argument"
	exit 1
fi

#Récupération de l'argument
urls=$1

#Comptage du nombre de ligne qui commence par 1 Exercice1
lignenbr=1

#Lecture du fichier
while read -r line
do

#Exercice2

#Je récupère le code http
http_code=$(curl -s -I -L -w "%{http_code}" -o /dev/null "$line")

#Je récupère l'encodage
encoding=$(curl -o /dev/null -s -I -L -w "%{content_type}" $line | grep -Po 'charset=\S+' | cut -d "=" -f2 | tr -d "\r\n")

if [ -z $encoding ] #encoding=${encoding:-"N/A"}
then
	encoding="N/A"
fi

nbrmot=$(lynx -dump -nolist $line | wc -w)

	echo -e "${lignenbr}\t$line\t$http_code\t$encoding\t$nbrmot"

	#Défiler le comptage
	((lignenbr++)) #Exercice1
done < $urls
