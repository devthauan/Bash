#!/bin/bash

# Reads each line of a txt file
while read LINE || [ -n "${LINE}" ]; 
do
    echo "${LINE}"
done < "${1}"

#./read_txt_file.sh txt_file.txt