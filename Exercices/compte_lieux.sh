#/usr/bin/bash 

doss="/home/mrinab/Exercice1/ann"

if [ $# -ne 1 ]
then
echo " $ 0 <year> <month> <nb>"
exit 1 
fi

year=$1
month=$2
nb=$3

cat 201*/*_10_*.ann | grep  "Location" ${year}/${month}*.ann | cut -f 3 | sort | uniq -c | sort | tail -n15 | sort -r $nb
