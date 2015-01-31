#!/bin/bash
#filename:remove_words.sh
#20150131 23:34 byJaycee
#zhjcyx@gmail.com

if [ $# -ne 2 ];then
	echo "Usage: $0 filename pattern"
	exit -1
fi

pattern=$2

echo pattern is "$pattern"

cat $1 | sed "s/$pattern//g"
