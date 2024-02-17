#!/bin/bash

# Learning about arguments
FIRST_ARGUMENT=${1}
SECOND_ARGUMENT=${2}
echo "The first argument is: ${FIRST_ARGUMENT}"
echo "The second argument is: ${SECOND_ARGUMENT}"
echo "The amount of arguments passed is ${#}"
echo "The list of arguments passed is ${@}"
echo "The name of the script is: ${0}"

#./positional_arguments.sh first_argument second_argument third_argument
