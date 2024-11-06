#!/usr/bin/bash

echo "Location en 2016:"
grep Location ~Exercice1/ann/2016/*.ann | wc -l 

echo "Location en 2017:"
grep Location ~Exercice1/ann/2017/*.ann | wc -l 

echo "Location en 2018:"
grep Location ~Exercice1/ann/2018/*.ann | wc -l 

for annee in 2016 2017 2018 
do
	echo "Location en $annee"
	grep Location ~/Exercice1/ann/$annee/*.ann | wc -l
done
