#!/bin/bash
#filename:rename.sh
#20150124 22:25 byJaycee
#zhjcyx@gmail.com

count=1
for img in $(find . -iname "*.txt");do
	echo -n "$img ->"
	new=text-$count.${img##*.}
	mv "$img" "$new"
	let count++
done

