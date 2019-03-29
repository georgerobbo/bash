#!/bin/bash

until [[ $restart =~ [Nn][Oo] ]];  do # While the users answer to restart is Yes it will continue to run the script

echo "Enter the width of the rectangle:"
read width								# Asking the user to input their rectangle width
echo "Enter the height of the rectangle:"
read height								# Asking the user to input their rectangle height

if [[ $width =~ ^[0-9]+[.]?[0-9]*$ ]] && [[ $height =~ ^[0-9]+[.]?[0-9]*$ ]] #checking the input is a number
then

	cm=$(echo "$width*$height" | bc) #calculates the result in cm
	inch=$(echo "$width*$height/2.54" | bc) # calculates the result in inches

	echo "The area of the rectangle in cm is:"
	echo $cm 								# displays the answer in cm
	echo "The area of the rectangle in inches is"
	echo $inch # displays the answer in inch ONLY SHOWS THE RESULT IN FULL INTEGERS DOESNT DO FLOAT, unsure why
else
	echo "Please enter a number"		# if the user doesnt use a actual number it will show this instead of a calculation
	
fi

echo "Do you want to calculate again?"
echo "Type Yes or no"
read restart						#Asks the user if they want to restart which is where the until loop gets it answer from

done
