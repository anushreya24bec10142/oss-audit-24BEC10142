#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Anushreya Bhainsora | Course: Open Source Software

PACKAGE="python3"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "$PACKAGE is installed."
    dpkg -l | grep "^ii  $PACKAGE " | awk '{print "Version:", $3}'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for philosophy note
case $PACKAGE in
    python3)
        echo "Python: a powerful open-source language driven by community collaboration."
        ;;
    apache2)
        echo "Apache: the web server that helped build the open internet."
        ;;
    mysql)
        echo "MySQL: open source database powering millions of applications."
        ;;
    vlc)
        echo "VLC: a free media player that supports almost all formats."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
