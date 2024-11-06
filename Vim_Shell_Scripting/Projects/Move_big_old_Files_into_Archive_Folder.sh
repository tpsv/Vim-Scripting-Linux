#!/bin/bash/

# In the given directory, if you find files more than a given size ex:20MB or files older than given days ex:10 days 
#
# Compress those files and move in a archive folder 
#
BASE_DIRECTORY=/home/terry/Documents/DevOps/Youtube
DAYS=10
DEPTH=1
RUN=0

# Check if the directory actually exists 
if [[  ! -d $BASE_DIRECTORY ]]
then 
	echo "Directory does not exist $BASE_DIRECTORY"
	exit 1
else 
	echo " Directory does exist , proceeding with the script"
fi

#Check if Archive folder exists 

if [[  ! -d $BASE_DIRECTORY/archive ]]
then 
	mkdir $BASE_DIRECTORY/archive
fi

#Check if there is a large file over a certain size 

for i in 'find $BASE_DIRECTORY -maxdepth $DEPTH -type f -size +500M'
do
	if [ $RUN -eq 0 ]
	then
		gzip $i || exit 1
		mv $i.gz $BASE_DIRECTORY/archive ||exit 1
	fi
done

