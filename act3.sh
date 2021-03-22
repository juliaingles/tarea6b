#!/bin/bash



secuencia=0

while [ $secuencia -lt 10 ]; do

	for dia in lunes martes miercoles jueves viernes sabado domingo
	do
		secuencia=$(($secuencia+1))
		variable=`head -${secuencia} precipitaciones.txt | tail -1 | awk '{print $2}'`
		
		if [ $variable -eq 0 ]
		then
			echo "$dia no ha llovido"	
			
		fi
	done
	
done




