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
