# Enters the selected directory
cd "${1}"

# Goes through every Folder and move the file starting with the string passed to the root directory
for i in */
do
    cd "${i}"
    for j in "$(ls -d ${2}*.${3} 2> /dev/null)"
    do
        mv ${j} .. 2> /dev/null
    done
    cd ..
done

#./move_file_to_rooth.sh folder(Documents) starting_name(The Boys) extension(mkv)