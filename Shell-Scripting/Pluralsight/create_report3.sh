#!/bin/bash

#Pluralsight Getting Started with Shell Scripting for Bash and Z Shell
# https://app.pluralsight.com/library/courses/shell-scripting-bash-zshell-getting-started/table-of-contents

#condition to check for proper number of arguments
#THE SPACES AROUND THE ! ARE NECESSARY FOR IT TO WORK PROPERLY.

if [[ ! $input_file ]]; then 
   echo "Error. Input file not configured."
   exit 1
fi

if [[ ! -e $input_file ]]
then
   echo "Error: Input file $input_file does not exist."
   exit 1
fi

if [[ ! $1  ]]; then 
  echo "Error. Two arguments required."
  exit 1
fi

if [[ ! $2 ]]
then
  directory="$HOME/reports"
  exit 0
fi

container="$1"
directory="$2"

mkdir -p -- "$directory"

#Placing a variable name in {} specifies the exact beginning and end of 
#the variable name.

#removes hardcoding of csv file and lets you call dynamically on any file
#by using export in the command line
if grep -- "$container" "$input_file" > "$directory/{$container}_report.csv"
then
   echo "Wrote report $directory/$container.csv"
else
   echo "$container was not found"
fi
