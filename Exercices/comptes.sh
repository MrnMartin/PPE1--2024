#!/usr/bin/bash

d1="/home/mrinab/Exercice1/ann"

for year in 2016 2017 2018; do 
echo "pour l'année $year"
grep -c "Location" "$d1/$year"*.ann|wc-l
done
