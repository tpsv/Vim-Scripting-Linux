#!/bin/bash



for i in {1..10};
do
	if [[ i%2 -eq 0 ]]
	then
		continue
	fi
	echo "Odd number is $i"
done

