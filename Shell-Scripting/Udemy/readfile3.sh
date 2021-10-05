#!/usr/bin/env bash

#Udemy Shell Scripting: Discover How to Automate Command Line Tasks 
#https://www.udemy.com/course/shell-scripting-linux/

# Exercise 3 While Loops

# Write a shell script that that allows a user to select an action from the
# menu. The actions are to show the disk usage, show the uptime on the
# system, and show the users that are logged into the system. Tell the user
# to enter q to quit. Display "Goodbye!" just before the script exits.
# If the user enters anything other than 1,2,3, or 4, tell
# them that it is an "Invalid option."
# You can show the disk usage by using the df command.
# To show the uptime, use the uptime command.
# To show the users logged into the system, use the who command.
# Print a blank line after the output of each command.

echo "What you you like to do? (Enter 4 to quit.)"  
select option in "Show disk usage." "Show system uptime." "Show the users logged into the system." "q" 
do  #uses do/done 
case $option in
     "Show disk usage.") df; echo ;;
     "Show system uptime.") uptime; echo ;;
     "Show the users logged into the system.") who; echo ;;
     "q") echo "Goodbye!"; break;;
     *) echo "Invalid option." ;;
   esac
done

