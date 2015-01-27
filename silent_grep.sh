#!/bin/bash
#filename:silent_grep.sh
#20150127 10:05 byJaycee
#zhjcyx@gmail.com

if [ $# -ne 2 ];then
	echo "Usage:$(0) match_text filename"
	exit 1;
fi
match_text=$1
filename=$2
grep -q "$match_text" $filename
if [ $? -eq 0 ];then
	echo "The text \"$1\" exists in the file"
else
	echo "Text \"$1\" does not exist in the file"
fi

