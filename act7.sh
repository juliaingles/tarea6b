#!/bin/bash

cont=0
p_actual=$(pwd)
cd $1

if [ "$PWD" = "$p_actual" ]
then
	echo "no existe"
	exit
else
	echo "existe"
fi

#echo $p_actual

for var in $(ls $1*.txt)
do
	rm $var
	cont=$(( $cont + 1 ))
done

echo "Se han borrado $cont ficheros"
