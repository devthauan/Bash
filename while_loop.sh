#!/bin/bash

# Going throught while the counter is less than or equal to 5
COUNTER=1
while [[ ${COUNTER} -le 5 ]]
do
	echo ${COUNTER}
	((COUNTER++))
done

#./while_loop.sh