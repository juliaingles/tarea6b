#!/bin/bash


linux=0
p_linux=0
windows=0
p_windows=0
cont=1


for var in $( cat listado.txt | awk '{print $2}' )
do
	if [ $var = "Linux" ]
	then
		linux=$(( $linux+1 ))
	else
		windows=$(( $windows+1 ))
	fi
done

for var2 in $( cat listado.txt | awk '{print $3}' )
do
	variable=`head -$cont listado.txt | tail -1 | awk '{print $2}'`

        if [ $variable = "Linux" ]
        then
                p_linux=$(( $p_linux + $var2 ))
        else
                p_windows=$(( p_windows + $var2 ))
        fi
	cont=$(( $cont+1 ))
done


echo "Linux: $linux $p_linux"
echo "Windows: $windows $p_windows"
