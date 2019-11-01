#!/bin/bash

#This is the correct number
num=42

#This function prints a given error
printError()
{
    echo -e "\033[31mERROR:\033[35m $1"
    }
    #This functionwill get a value between the 2nd and 3rd arguments
    getNumber()
    {
        read -p " $1: "
        while (( $REPLY < $2||$REPLY > $3)); do
printError "Input must be between $2 and $3"
read -p "$1: "
done
}
echo "this is the start of the script"

getNumber "please type a number between 1 and 100" 1 100

while [[ REPLY -ne num ]]
do

#If REPLY is less than correct number
if [[ REPLY -lt num ]]; then
echo ""
echo "Too Low!" 
echo "Try Again"
fi

#If REPLY is greater than correct number
if [[ REPLY -gt num ]]; then
echo ""
echo "Too High!"
echo "Try Again"
fi

#Read new attempt
read REPLY

done

#Game won if REPLY equals Correct Number
if [[ REPLY -eq num ]]; then
echo " Correct"

fi