#!/bin/bash

cat test.csv | awk "NR!=1" | while IFS="," read id name age
do
	echo "ID is $id"
	echo "Name is $name"
done
