#!/bin/bash

# Reads the CSV file passed as argument
CSV_FILE="${1}"

# Install the dos2unix to convert the file
command sudo apt install dos2unix -y

# Converts the file
dos2unix $CSV_FILE

# Go through all the CSV file *(IFS) expecify the type of file separator
while IFS="," read -r USUARIOS GRUPO SENHA
do
    if [[ ${USUARIOS} = "usuarios" ]]
    then
        continue
    fi
    # Creates the user
    aws iam create-user --user-name "${USUARIOS}"
    # Attaches it to a group
    aws iam add-user-to-group --user-name "${USUARIOS}" --group-name "${GRUPO}"
    # Creates a login profile
    aws iam create-login-profile --user-name "${USUARIOS}" --password "${SENHA}" --password-reset-required
done < ${CSV_FILE}