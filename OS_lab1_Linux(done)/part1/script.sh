#!/bin/bash

largest_file=""
size=0


shopt -s dotglob

for file in "$HOME"/.*; do
    if [ -f "$file" ] && [ -s "$file" ]; then
        file_size=$(stat -c %s "$file")
        if [ "$file_size" -gt "$size" ]; then
            size=$file_size
            largest_file=$file
        fi
    fi
done

if [ -n "$largest_file" ]; then
    echo "The largest file in the home directory is: $largest_file"
else
    echo "No files found in the home directory."
fi

