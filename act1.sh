#!/bin/bash


i=1



	for var in $(cat nombres.txt)
	do
		for var2 in `seq 1 $1`
		do
		
			mkdir -p ./$var/personal$var2
		done		
	done
	i=$(($i+1))

