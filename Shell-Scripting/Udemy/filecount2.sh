#!/usr/bin/env bash

#Udemy Shell Scripting: Discover How to Automate Command Line Tasks 
#https://www.udemy.com/course/shell-scripting-linux/

# Exercise 2 of Functions

#Modify the script from the previous exercise. Make the "file_count" function 
#accept a directory as an argument. Next have the function display the name of
#the directory followed by a colon. Finally, display the number of files to 
#the screen on the next line. Call the function three times. First, on the 
#"/etc" directory, next on the "/var" directory and finally on the "/usr/bin"
# directory.
#Example output:
#/etc: 85

file_count()
{
  if [[ -d $1 ]]
  then
  echo "$1:"
  local count=$(ls $1 | wc -l)
  echo ${count}
  fi
}

file_count $1



