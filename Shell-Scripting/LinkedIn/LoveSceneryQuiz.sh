#!/usr/bin/env bash

#LinkedIn Learning  Learning Bash Scripting
#https://www.linkedin.com/learning/learning-bash-scripting-2/working-with-numbers

#Quick trivia about the Chinese drama Love Scenery


#Variables
declare -i points=0
declare -i quescount=0
red="\033[1;31;31m"
green="\033[1;32;32m"
purpblink="\033[5;33;94m"
none="\033[0m"


echo "So, you think you're a fan of \"Love Scenery\"?  I challenge you to a quiz."
echo
read -p "What's your name? [Player] " name
while [[ -z ${name} ]] 
do
	name="Player"
done   

echo "Okay. ${name}.  Here's your first question."
echo
echo "What is Lu Jing's streamer name?"
select ans1 in "Nai He" "Herman" "Key"
do
	quescount+=1
	case $ans1 in
		"Nai He") echo -e $red"Incorrect"$none; break;;
		Herman) echo -e $green"Correct\a"$none; points+=1; break;;
		Key) echo -e $red"Incorrect"$none; break;;
	esac
done
echo
echo "What is Lu Jing's video game nickname for Liang Chen?"
select ans2 in "Little Box" "Treasure Box" "Treasure Hunter"
do
	quescount+=1
	case $ans2 in 
		"Little Box") echo -e $green"Correct\a"$none; points+=1; break;;
		"Treasure Box") echo -e $red"Incorrect"$none; break;;
		"Treasure Hunter") echo -e $red"Incorrect"$none; break;;
	esac
done
echo
echo "Final Challenge!!! And it's tough."
echo
read -p "Type Little Box in pinyin. [press enter for a hint] " ans3
quescount+=1
while [[ -z $ans3 ]]
do
	echo "Use Google translate!"
	read -p "Type Little Box in pinyin. Capitalize the first letter of each word. " hint3
	ans3=$hint3
done

if [[ $ans3 == "Xiao Hezi" || $ans3 == "Xiǎo Hézi" ]]
	then points+=1
	echo -e $green"Correct\a"$none
	else
	echo -e $red"Incorrect"$none
fi
echo

echo "Your score is $points out of 3."

echo

#declare i pass=$(($quescount / 2))
#echo $pass
if (( $points > $(($quescount / 2 )) )); then
   echo -e $purpblink"YOU WIN"$none
else
   echo "Sorry. You lose."
fi
 
