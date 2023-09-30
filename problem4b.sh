#!/usr/bin/env bash

# Check if the text file exists
if [ ! -f fileread.txt ]; then
    echo "The 'fileread.txt' file does not exist."
    exit 1
fi

# Read each line from the text file and create folders
while IFS= read -r foldername; do
    # Remove leading and trailing whitespace from the folder name
    fileread=$(echo "$fileread" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')

    # Check if the folder name is not empty
    if [ -n "$fileread" ]; then
        # Create the folder if it doesn't exist
        if [ ! -d "$fileread" ]; then
            mkdir "$fileread"
            echo "Folder '$fileread' created."
        else
            echo "Folder '$fileread' already exists."
        fi
    fi
done < fileread.txt
