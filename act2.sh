#!/bin/bash


resultado=0
contador=0

for var in $( cat  precipitaciones.txt | awk '{print $2}' )
do
	resultado=$(( $resultado+$var ))
	contador=$(( $contador+1 ))
done

	echo "la media de precipitaciones es de:  $(($resultado/$contador))"
