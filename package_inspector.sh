#!/bin/bash

# Script Name : package_inspector.sh
# Author      : Aanya Pahwa

echo "Select option:"
echo "1. Show version"
echo "2. Show location"
read choice

case $choice in
    1)
        version=$(python --version 2>/dev/null || python3 --version 2>/dev/null)
        echo "Version: $version"
        ;;
    2)
        location=$(which python 2>/dev/null || which python3 2>/dev/null)
        echo "Location: $location"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac