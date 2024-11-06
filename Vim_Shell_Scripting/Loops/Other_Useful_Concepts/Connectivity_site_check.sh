#!/bin/bash

read -p "Which site do you want to check ? " site

ping -c 1 $site
#sleep 2s

if [[ $? -eq 0 ]];
then 
	echo "$site is reachable"
else
	echo "Unable to connect to the $site"
fi

