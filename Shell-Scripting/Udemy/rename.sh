#!/usr/bin/env bash

#Udemy Shell Scripting: Discover How to Automate Command Line Tasks 
#https://www.udemy.com/course/shell-scripting-linux/

#Exercise 2 Wildcards

# Write a script that renames files based on the file extension. The script
# should prompt the user for a file extension. Next, it should ask the user
# what prefix to prepend to the file name(s). By default the prefix should be
# the current date in YYYY­MM­DD format. So, if the user simply presses enter t
# the date will be used. Otherwise, whatever the user entered will be used as
# the prefix. Next, it should display the original file name and the new name
# of the file. Finally, it should rename the file.

# Example output 1:
# Please enter a file extension: jpg
# Please enter a file prefix: (Press ENTER for 2015­08­10). vacation R
# Renaming mycat.jpg to vacation­mycat.jpg.

# Example output 2:
# Please enter a file extension: jpg
# Please enter a file prefix: (Press ENTER for 2015­08­10). Renaming mycat.jpg 
# to 2015­08­10­mycat.jpg.

d=$(date "+%Y-%m-%d")
found=0
read -p "Please enter a file extension: " ext

read -p "Please enter a file prefix [Press ENTER for today's date). " prefix

shopt -s nullglob 
for file in *.${ext}
do
   if [[ -z ${prefix} ]]
   then
     echo "Renaming ${file} to ${d}-${file}."
     mv ${file} ${d}-${file}
   else
     echo "Renaming ${file} to ${prefix}-${file}."
     mv ${file} ${prefix}-${file}
   fi
   found+=1
done

shopt -u nullglob 

if [[ $found -eq 0 ]]
then
   echo "File type not found."
fi
