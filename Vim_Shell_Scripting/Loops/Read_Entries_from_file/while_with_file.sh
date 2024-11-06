#!/bin/bash

while read myvar
do
	echo "The variable that has been retrieved from the file is $myvar"
done < names.txt
