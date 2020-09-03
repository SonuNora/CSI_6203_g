#!/bin/bash
direc=$(pwd);                                  #Get the directory name into direc
echo "The ${direc##*/} directory contains "    #Display the directory name with message
ls -l                                          #Display the directories and files
count=0
fcount=0

for item in .* *;  do                          #Check each item in the list
   if [ -d $item ]; then
      echo -e "$item is a directory "          #Display if directory
      ((count++))           
    else
       echo -e "$item is a file "               #Display if file
      ((fcount++))
    fi
    
done
echo "The are $count directories and $fcount files in this directory "    #Display the total count of directory and file

exit 0