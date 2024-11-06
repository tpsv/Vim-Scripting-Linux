#!/bin/bash

#┌──(terry㉿kali)-[~/…/DevOps/Youtube/Vim_Shell_Scripting/Projects]
#└─$ free -h
#               total        used        free      shared  buff/cache   available
#Mem:           8.3Gi       1.3Gi       6.3Gi        39Mi       1.1Gi       7.0Gi
#Swap:          975Mi          0B       975Mi
                                                                                                                                                                                                                                            
#┌──(terry㉿kali)-[~/…/DevOps/Youtube/Vim_Shell_Scripting/Projects]
#└─$ free -mt
#               total        used        free      shared  buff/cache   available
#Mem:            8508        1295        6417          39        1097        7213
#Swap:            975           0         975
#Total:          9484        1295        7393
                                                                                                                                                                                                                                            
#┌──(terry㉿kali)-[~/…/DevOps/Youtube/Vim_Shell_Scripting/Projects]
#└─$ free -mt | grep Total
#Total:          9484        1302        7386
                                                                                                                                                                                                                                            
#┌──(terry㉿kali)-[~/…/DevOps/Youtube/Vim_Shell_Scripting/Projects]
#└─$ free -mt | grep Total
#Total:          9484        1302        7386
                                                                                                                                                                                                                                            
#┌──(terry㉿kali)-[~/…/DevOps/Youtube/Vim_Shell_Scripting/Projects]
#└─$ free -mt | grep Total | awk '{print $4}'
#7384

# Above comments is the user attemptin to ruin the commands to check how can we retireve the intreseted value using the terminal first.
#

FREE_SPACE=$(free -mt | grep Total | awk '{print $4}')
TH=6000

if [[ $FREE_SPACE -lt $TH ]]
then
	echo "WARNING, RAM is running low"
else 
	echo "RAM is sufficient - $FREE_SPACE"
fi

