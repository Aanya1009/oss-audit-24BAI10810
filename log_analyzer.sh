#!/bin/bash

# ----------------------------------------
# Script Name : log_analyzer.sh
# Author      : Aanya Pahwa
# Purpose     : Count "error" in log file
# ----------------------------------------

# Variables
file=$1
keyword="error"
count=0

# File check
if [ ! -f "$file" ]
then
    echo "File not found"
    exit
fi

# While loop
while read line
do
    echo "$line" | grep -i "$keyword" >/dev/null

    if [ $? -eq 0 ]
    then
        count=$((count+1))
    fi
done < "$file"

# Output
echo "Total occurrences of '$keyword' : $count"

echo "Last 3 matches:"
grep -i "$keyword" "$file" | tail -3