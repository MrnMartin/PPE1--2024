#!/usr/bin/bash

dos="/home/mrinab/Exercice1/ann/2016"

L=$(grep -r 'Location' "$dos"/*.ann | wc -l)
P=$(grep -r 'Person' "$dos"/*.ann | wc -l)
Dat=$(grep -r 'Date' "$dos"/*.ann | wc -l )
O=$(grep -r 'Organization' "$dos"/*.ann | wc -l)

echo "$L"
echo "$P"
echo "$Dat"
echo "$O"


dos2="/home/mrinab/Exercice1/ann/2017"

L=$(grep -r 'Location' "$dos2"/*.ann | wc -l)
P=$(grep -r 'Person' "$dos2"/*.ann | wc -l)
Dat=$(grep -r 'Date' "$dos2"/*.ann | wc -l )
O=$(grep -r 'Organization' "$dos2"/*.ann | wc -l)

echo "$L"
echo "$P"
echo "$Dat"
echo "$O"


d3="/home/mrinab/Exercice1/ann/2018"

L=$(grep -r 'Location' "$d3"/*.ann | wc -l)
P=$(grep -r 'Person' "$d3"/*.ann | wc -l)
Dat=$(grep -r 'Date' "$d3"/*.ann | wc -l )
O=$(grep -r 'Organization' "$d3"/*.ann | wc -l)

echo "$L"
echo "$P"
echo "$Dat"
echo "$O"

#Or

#for year in 2016 2017 2018; do
#echo "$year"
#done
