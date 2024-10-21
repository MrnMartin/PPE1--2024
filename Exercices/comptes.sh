#!/usr/bin/bash

d1="/home/mrinab/Exercice1/ann"

for year in {2016..2018}; do

C1="$d1/$year"

count=$(grep -r 'Location' "$C1"/*.ann 2>/dev/null | wc -l)

echo "Le mot 'Location' apparaît $count fois dans les fichiers $year"

done


