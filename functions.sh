#!/bin/bash

# Creating function that prints something
function_name(){
	echo "Function working"
}
# Invoking function
function_name

# Creating function and passing arguments
function_arguments(){
	echo "Argument passed ${@}"
}
function_arguments "argument 1" "argument 2" 3

#./functions.sh