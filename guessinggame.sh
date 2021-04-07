#!/usr/bin/env bash
# File: guessinggame.sh

function attempt {
read response
}

echo "Hi! How many files in this directory? Type in a number and then press Enter:"
attempt 
continue=true
while $continue
do
    num=$(ls | wc -l)
    if [[ response -gt num ]]
    then 
		echo "Too much... Try again!"
        attempt 
    elif [[ response -lt num ]]
    then
        echo "Too little... Try again!"
        attempt 
    else
        echo "Congrats, you guessed! Goodbye."
        continue=false
    fi
done
