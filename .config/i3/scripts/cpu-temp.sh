#!/bin/bash
# Show the CPU temperature
echo " "$(sensors | grep "id 0:" | cut -c17-18)" °C"
#echo " "$(acpi -t | grep 1 | cut -c16-17)" °C"
