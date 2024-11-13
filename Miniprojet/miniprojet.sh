#!/usr/bin/env bash

#Combinaison de l'exercice 1 et 2

#Besoin d'un argument Exercice1
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
http_code=$(curl -s -I -L -w "%(http_code)" -o /dev/null "$line")

#Je récupère l'encodage
encoding=$(curl -s -I "$line" | grep -i "Content-Type" | sed -n 's/.*charset=\([^ ;]*\).*/\1/p')

if [ -z $encoding ] #encoding=${encoding:-"N/A"}
then 
	encoding="N/A"
fi

nbrmot=$(lynx -dump -nolist $line | wc -w)

	echo -e "${lignenbr}\t$line\t$http_code\t$encoding\t$nbrmots" 

	#Défiler le comptage
	((lignenbr++)) #Exercice1
done < $urls
