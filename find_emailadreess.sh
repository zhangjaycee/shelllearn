#!/bin/bash
#filename:find_emailadress.sh
#20150131 222:39 byJaycee
#zhjcyx@gmail.com

if [ $# -ne 1 ];then
	echo "Usage: $0 filename"
	exit -1
fi

cat $1|\
grep -E '[a-zA-Z0-9._]+@[a-zA-Z0-9.]+\.[a-zA-Z]{2,4}'
