#!/bin/bash
#filename:word_freq.sh
#20150127 15:37 byJaycee
#zhjcyx@gmail.com

if [ $# -ne 1 ];then
	echo "Usage: $0 filename"
	exit -1
fi

filename=$1
egrep -o "\b[[:alpha:]]+\b" $filename | \
awk '{
	count[$0]++;
}
END{
	printf("%-14s%s\n","Word","Count");
	for(ind in count){
		printf("%-14s%d\n",ind,count[ind]);
	}
}
'
