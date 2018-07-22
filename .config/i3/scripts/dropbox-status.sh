#!/bin/bash

ICON=
DB_STATUS=$(caja-dropbox status)
if [[ $(echo $DB_STATUS | grep -Fo "Up to date") ]]; then
        COLOR='#F3F4F5'
elif [[ $(echo $DB_STATUS | grep -Fo "Uploading") ]]; then
        COLOR='#F3F4F5'
elif [[ $(echo $DB_STATUS | grep -Fo "Syncing") ]]; then
        COLOR='#FFAE00'
elif [[ $(echo $DB_STATUS | grep -Fo "Downloading") ]]; then
        COLOR='#FFAE00'
elif [[ $(echo $DB_STATUS | grep -Fo "Starting") ]]; then
        COLOR='#FFAE00'
elif [[ $(echo $DB_STATUS | grep -Fo "Indexing") ]]; then
        COLOR='#FFAE00'
elif [[ $(echo $DB_STATUS | grep -Fo "Dropbox isn't running") ]]; then
        exit 0
        COLOR=\#FF0000
elif [[ $(echo $DB_STATUS | grep -Fo "Connecting") ]]; then
        COLOR=\#FF0000
fi
echo $ICON
echo $ICON
echo $COLOR
