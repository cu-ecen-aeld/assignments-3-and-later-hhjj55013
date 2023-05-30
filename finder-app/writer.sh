#!/bin/bash
# writer script for assignment 1

# Check if all arguments are specified
#if [ $# -ne 2 ]; then
#    echo "Error: two arguments should be supplied."
#    exit 1
#fi

#writefile="$1"
#writestr="$2"

# Create the directory path if it doesn't exist
#mkdir -p "$(dirname "$writefile")"

# Write the content to the file
#echo "$writestr" > "$writefile"

# Check if the file was created successfully
#if [ $? -ne 0 ]; then
#    echo "Failed to create $writefile"
#    exit 1
#fi

#echo "File created successfully: $writefile"
#exit 0

# Nested if statements
if [ $# -eq 2 ]
    then
    writefile="$1"
    writestr="$2"
    if [ -d writefile ]
        then
        # file does exist : write to it
        echo "$writestr" > "$writefile"
    else
        # file does not exit : make new and write to it
        mkdir -p "$(dirname $writefile)" && touch "$writefile"
        echo "$writestr" > "$writefile"
    fi
else
    echo "More or less args are passed"
    exit 1
fi