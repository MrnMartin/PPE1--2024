#/usr/bin/bash 

if[ $# -ne 3 ]
then
  echo "Besoin de 3 arguments"
  exit 1 
fi

annee=$1
mois=$2
nb=$3

if [$nb -lt 1]
then 
  echo "Au moins un lieu" 
  exit 2
fi 

cat 201*/*_10_*.ann | grep  "Location" ${annee}/${mois}_*.ann | cut -f 3 | sort | uniq -c | sort | tail -n15 | sort -r $nb
