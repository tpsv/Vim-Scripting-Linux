#!/bin/bash

read -p "What is your Name " name 

welcome() { 
	echo "-__--__--__--__--__--__--__--__--__--__--__--__--__--"
	echo "WELCOME $1"
	echo "-----------------------------------------------------"
}

welcome "$name"

