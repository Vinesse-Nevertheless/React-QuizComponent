#!/usr/bin/env bash

#Udemy Shell Scripting: Discover How to Automate Command Line Tasks 
#https://www.udemy.com/course/shell-scripting-linux/

# Exercise 8 of Shell Scripting Succinctly

# WORKS PROVIDED THAT THERE ARE NO SPACES IN YOUR FILE NAME

#Write a shell script that prompts the user for a name of a file or directory
# and reports if it is a regular file, a directory, or other type of file.

#I MODIFIED THIS SLIGHTLY TO HAVE THE PROGRAM RETURN TO THE HOME DIRECTORY
#AND REQUEST THE USER TO ENTER THE PATH SO THAT THE WHOLE SYSTEM COULD
#BE CHECKED TO SEE IF FILE/DIR EXISTS.

#Also perform an ls command against the file or directory with the long 
#listing option.

# ** Modified to accept any number of files/dirs


for name in $@
   do
       cd /
       echo
   	if [[ ! -e ${name} ]]
   	then
  		echo "${name} file or directory does not exist."
   	fi

   	if [[ -d ${name} ]]
   		then
   		echo "${name} is a directory."
   	fi

	if [[ -f ${name} ]]
	then
   		echo "${name} is a regular file."
	fi

	if [[ -b ${name} ]]
	then
   		echo "${name} is a block special file."
	fi

	if [[ -c ${name} ]]
	then
   		echo "${name} is a character file."
	fi

	if [[ -r ${name} ]]
	then
   		echo "${name} is a readable file."
	fi

	if [[ -w ${name} ]]
	then
   		echo "${name} is a writeable file."
	fi

	if [[ -x ${name} ]]
	then
   		echo "${name} is an executable file."
	fi

#if directory, use dir name
#else it's a file so change to the directory the file is in & list file info.
	if [[ -d ${name}  ]]
	then
   		cd ${name}
   		ls -l
	else
   		cd $(dirname ${name})
   		ls -l $(basename ${name})
	fi
done

#ls -l  #list dir/file with permissions etc.

#echo $(basename ${name}) basename returns the last dir/filename in path
			  #but it's use isn't necessary here.
