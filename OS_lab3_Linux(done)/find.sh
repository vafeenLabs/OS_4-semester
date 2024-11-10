#!/bin/bash

author_search="Author_2"
year_search="Year 1"


for link in Library/Authors/"$author_search"/*; do
    actual=$(readlink -f "$link")
    year_file=$(cat "$actual/year.txt")
    
    if [ "$year_file" = "$year_search" ]; then
        echo "Match found:"
        echo "$actual"
        cat "$actual/author.txt"
        #cat "$actual/field.txt"
        cat "$actual/year.txt"
        #cat "$actual/journal.txt"
    fi
done


