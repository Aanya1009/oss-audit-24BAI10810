#!/bin/bash

student_name="Aanya Pahwa"
software="Python"

os_name=$(systeminfo | grep "OS Name" | cut -d: -f2)
kernel=$(uname -r)
user=$(whoami)
uptime=$(uptime -p)
date_time=$(date)

echo "-------------------------------"
echo " Open Source System Report"
echo "-------------------------------"
echo "Name        : $student_name"
echo "Software    : $software"
echo "OS          : $os_name"
echo "Kernel      : $kernel"
echo "User        : $user"
echo "Home Dir    : $HOME"
echo "Uptime      : $uptime"
echo "Date & Time : $date_time"
echo "-------------------------------"