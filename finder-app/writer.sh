#!/bin/bash


if [ "$#" -ne 2 ]
then
    echo "Error: Please provide write file and data to write"
    exit 1
fi


filedir="$1"
writestring="$2"

if [ -z "$filedir" ] || [ -z "$writestring" ] 
then
    echo "Error:writefile or writestr empty"
    exit 1
fi

path=$(dirname "$filedir")
echo "$path"

mkdir -p "$path"


echo "$writestring" > "$filedir"

if [ $? -ne 0 ] 
then
    echo "Error: Could not create or write to $writefile"
    exit 1
fi

echo "File $filedir created successfully with content: $writestring"
