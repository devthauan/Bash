#!/bin/bash

# Reads and explodes into variables the content of a CSV file separated with ;
while IFS=";" read -r COLUMN_1 COLUMN_2
do
	echo "${COLUMN_1}" "${COLUMN_2}"
done < ${1}

#./read_csv_file.sh csv_file.csv