#!/bin/bash

# Function to check if a path is a directory
is_directory() {
    if [ -d "$1" ]; then
        return 0  # The path is a directory
    else
        return 1  # The path is not a directory
    fi
}

# Prompt the user for a directory path
read -p "Enter a directory path: " path

# Check if the provided path is a directory
if is_directory "$path"; then
    # List files in the directory
    echo "Files in the directory '$path':"
    ls "$path"
else
    # If not a directory, ask for a valid directory path
    while ! is_directory "$path"; do
        echo "The provided path is not a directory or doesn't exist."
        read -p "Enter a valid directory path: " path
    done

    # List files in the valid directory
    echo "Files in the directory '$path':"
    ls "$path"
fi

