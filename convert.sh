#!/bin/bash
echo "WELCOME TO MP4 CONVERTER";
echo -n "enter the path of video >> ";
read -r filename;
echo "$filename";

if [[ -f $filename ]]; then
    echo "$filename is a file"
else
    echo "$filename is not valid"
    exit 1
fi
