#!/bin/bash
# Script 3: Directory and Permission Auditor
# Author: Anushreya Bhainsora | Course: Open Source Software

DIRECTORY="/usr/bin"

echo "Checking files in $DIRECTORY"
echo "--------------------------------"

# Loop through files
for file in $DIRECTORY/*; do
    if [ -f "$file" ]; then
        echo "File: $(basename $file)"
        
        # Check permissions
        if [ -r "$file" ]; then
            echo "  Readable"
        fi
        
        if [ -w "$file" ]; then
            echo "  Writable"
        fi
        
        if [ -x "$file" ]; then
            echo "  Executable"
        fi
        
        echo "--------------------------------"
    fi
done
