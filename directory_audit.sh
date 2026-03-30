#!/bin/bash

# ----------------------------------------
# Script Name : directory_audit.sh
# Author      : Aanya Pahwa
# Purpose     : Check directories info
# ----------------------------------------

# Array
dirs=("/etc" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop
for d in "${dirs[@]}"
do
    # Condition
    if [ -d "$d" ]
    then
        perms=$(ls -ld $d | awk '{print $1}')
        owner=$(ls -ld $d | awk '{print $3}')
        size=$(du -sh $d 2>/dev/null | cut -f1)

        echo "Directory : $d"
        echo "Owner     : $owner"
        echo "Perms     : $perms"
        echo "Size      : $size"
        echo "----------------------"
    else
        echo "$d not found"
    fi
done