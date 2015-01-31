#!/bin/bash
#filename:inverted_cat.sh
#20150131 22:15 byJaycee
#zhjcyx@gmail.com

if [ $# -ne 1 ];then
	echo "Usage: $0 filename"
	exit -1
fi


cat $1|\
awk '{
	lifo[NR]=$0
}END{
	for(lno=NR;lno>0;lno--){
		print lifo[lno];
	}
}
'
