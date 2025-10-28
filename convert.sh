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

filenameConvert=$(basename "$filename")
filenameConvert=${filenameConvert%.*}

echo "===========================Converter start==========================="
ffmpeg -y -i "$filename"\
    -r 20 -s 352x288 -vb 400k \
    -acodec aac -b:a 48k -ac 1 -ar 44100 \
    "$filenameConvert.3gp"

echo "===========================Converter finish==========================="
