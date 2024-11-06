#!/bin/bash

#┌──(terry㉿kali)-[~/…/DevOps/Youtube/Vim_Shell_Scripting/Projects]
#└─$ df -h | grep "/dev/sda1" | awk '{print $4}'
#135G
#┌──(terry㉿kali)-[~/…/DevOps/Youtube/Vim_Shell_Scripting/Projects]
#└─$ df -h | grep "/dev/sda1" | awk '{print $5}'
#10%
#┌──(terry㉿kali)-[~/…/DevOps/Youtube/Vim_Shell_Scripting/Projects]
#└─$ df -h | grep "/dev/sda1" | awk '{print $5}' | tr -d %
#10
       
FILESPACE=$(df -h | grep "/dev/sda1" | awk '{print $5}' | tr -d % )

if [[ $FILESPACE -ge 80  ]]
then
	echo "Warning Disk Space is low" 
else
	echo "Space is good"
fi

