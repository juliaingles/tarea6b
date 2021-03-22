#!/bin/bash

#rm $1/*.txt
cont=0


for var in $(ls $1*.txt)
do
	rm $var
	cont=$(( $cont + 1 ))
done

echo "Se han borrado $cont ficheros"
