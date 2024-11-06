#!/bin/bash


# Difference between while loop and until loop is that , While loop run till the conditions is true WHEREAS Until loop is executed till a specific condition becomes true.
#

a=10

until [[ $a -eq 1 ]]
do
	echo "Value is $a"
	let a--
done
