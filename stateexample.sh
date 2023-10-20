#!/bin/bash

filename="/var/stateexample/state.txt"

# Function that reads a file based on a filename 
printfilecontents() {
    if [ -f $1 ]; then 
        echo | cat $1
    else 
        echo "File $1 not found"
    fi
}

# Function that appends user input to a file
processinput() {
    printf "\nEnter a message:"
    read input
    echo $input >> $1
    echo | cat $1
}

# Create file
touch $filename

printfilecontents $filename
processinput $filename
