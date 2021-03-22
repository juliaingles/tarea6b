#!/bin/bash

cont=0

while [ $cont -lt  255 ]
do
	var=`ping -c 1 192.168.0.$cont | awk '{print $4}' | tail -2 | head -1`
	if [ $var = 1 ]
	then
		echo 192.168.0.$cont >> maquinas.txt
	fi
	#echo $pingo
	cont=$(( $cont+1 ))
done

echo "las ips que dan ping son: : "
cat maquinas.txt
rm maquinas.txt

