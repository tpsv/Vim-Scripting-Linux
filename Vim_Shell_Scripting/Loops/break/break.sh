#!/bin/bash

no=5

for i in {1..10};
do
	if [[ i -eq $no ]]
	then
		echo "Number $i is found"
		break
	fi
	echo "Number is $i"
done

