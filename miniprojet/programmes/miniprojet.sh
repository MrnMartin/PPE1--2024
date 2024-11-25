#!/usr/bin/env bash

if [  $# -ne 1 ]
then
	echo "Le script à besoin d'un argument"
	exit 1
fi

I=0
echo "<html>"
echo "<html lang='fr'"
echo "<head>"
echo "    <meta charset=\"UTF-8\">"
echo "    <title>Mini-projet</title>"
echo "    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@1.0.2/css bulma.min.css\">"
echo "</head>"
echo "<body>"
echo "  <h1>Liste des URLS</h1>"
echo "  <table border='1'>"
echo "   <thead>"
echo "        <tr>"
echo "           <th>#</th>"
echo "                <th>URL</th>"
echo "               <th>Status</th>"
echo "              <th>Encoding</th>"
echo "              <th>Nombre de mot</th>"
echo "        </tr>"
echo "		</thead>"
echo "		<tbody>"
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

	echo "        <tr>"
	echo "            <td>$lignenbr</td>"
	echo "            <td>$line</td>"
	echo "            <td>$http_code</td>"
	echo "            <td>$encoding</td>"
	echo "            <td>$nbrmot</td>"
	echo "        </tr>"


	#Défiler le comptage
	((lignenbr++)) #Exercice1
done < $urls

echo "	 </tbody>"
echo "  </table>"
echo " </div>"
echo "</body>"
echo "</html>"
