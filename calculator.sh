#!/bin/bash

# Getting user input
echo "Enter a number"
read FIRST_NUMBER
echo "Enter a second number"
read SECOND_NUMBER

# Doing the calculations
echo "SUM: $((FIRST_NUMBER + SECOND_NUMBER))"
echo "SUBTRACTION: $((FIRST_NUMBER - SECOND_NUMBER))"
echo "MULTIPLICATION: $((FIRST_NUMBER * SECOND_NUMBER))"

# Checking division by 0
if [[ ${SECOND_NUMBER} = 0 ]]
then
    echo "DIVISION BY 0"
else
    echo "DIVISION: $((FIRST_NUMBER / SECOND_NUMBER))"
fi

#./calculator.sh