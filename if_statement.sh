#!/bin/bash

# Checking if the amount of arguments passed is equal to 0, if not, prints the amount
if [[ ${#} -eq 0 ]]
then
	echo "Zero arguments passed"
else
	echo "${#} arguments passed"
fi

#./if_statement.sh
#./if_statement.sh first_argument second_argument third_argument