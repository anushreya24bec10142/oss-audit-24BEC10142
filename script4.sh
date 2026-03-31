#!/bin/bash
# Script 4: File Analyzer
# Author: Anushreya Bhainsora | Course: Open Source Software

# Function to analyze file
analyze_file() {
    FILE=$1

    if [ -f "$FILE" ]; then
        echo "File Name: $FILE"
        echo "Size: $(stat -c%s "$FILE") bytes"
        echo "Number of lines: $(wc -l < "$FILE")"
        echo "Number of words: $(wc -w < "$FILE")"
        echo "--------------------------------"
    else
        echo "File does not exist."
    fi
}

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: ./script4.sh <filename>"
    exit 1
fi

# Call function
analyze_file "$1"
