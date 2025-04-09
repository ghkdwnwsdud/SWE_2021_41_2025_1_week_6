#!/bin/bash

FILE_DIR="./files"

for file in "$FILE_DIR"/*; do
    
    filename=$(basename "$file")    #file name
    
    first_char=$(echo "${filename:0:1}" | tr '[:upper:]' '[:lower:]')   #first character


    if [[ "$first_char" =~ [a-z] ]]; then
       
        #mkdir -p "$first_char"
        mv "$file" "$first_char/"
    fi
done
