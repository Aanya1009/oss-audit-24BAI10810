#!/bin/bash

# ----------------------------------------
# Script Name : manifesto_generator.sh
# Author      : Your Name
# Course      : Open Source Software
# Purpose     : Generate a simple open-source manifesto
# ----------------------------------------

# User Input
read -p "Enter tool name: " tool
read -p "Freedom means: " freedom
read -p "What do you want to build: " build

# Variables
file="manifesto.txt"
date=$(date)

# File Writing
echo "Open Source Manifesto" > $file
echo "Generated on: $date" >> $file
echo "----------------------" >> $file
echo "I use $tool regularly." >> $file
echo "Freedom means $freedom." >> $file
echo "I want to build $build." >> $file
echo "----------------------" >> $file

# Output
echo "File created: $file"
cat $file