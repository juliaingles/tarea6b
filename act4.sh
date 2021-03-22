#!/bin/bash


total_pares=0
total_impares=0

for var in $( cat numeros.txt )
do
	if [ $(( $var%2 )) -eq 0 ]
	then
		total_pares=$(( $total_pares + $var ))
	else
		total_impares=$(( $total_impares + $var ))
	fi
done

echo "suma total de números pares: $total_pares"
echo "suma total de números impares: $total_impares"
