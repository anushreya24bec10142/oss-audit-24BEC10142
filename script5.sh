#!/bin/bash
# Script 5: Temporary File Cleaner
# Author: Anushreya Bhainsora | Course: Open Source Software

DIRECTORY="/tmp"
DAYS=1

echo "Cleaning files older than $DAYS day(s) in $DIRECTORY"
echo "--------------------------------"

# Find and delete old files
find $DIRECTORY -type f -mtime +$DAYS -print -delete

echo "Cleanup completed."
