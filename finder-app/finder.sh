#!/bin/bash


if [ "$#" -ne 2 ]
then
    echo "Error: Provide the input arguments file path and string to search"
    exit 1
fi

filesdir="$1"
searchstring="$2"

if [ ! -d "$filesdir" ] 
then
    echo "Error:Directory does not exist"
    exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)
num_matching_lines=$(grep -r "$searchstring" "$filesdir" | wc -l)


echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"
