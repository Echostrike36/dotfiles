#!/bin/bash
#########################################################################
# Purpose: This script is used in the i3/config to lock 
# the screen and suspend the laptop. To use this script  use a line
# like the one below in your ~/.config/i3/config file.
# exec_always --no-startup-id xautolock -time 10 -locker ./this-script.sh
#########################################################################
i3lock -c 2f343f && systemctl suspend
