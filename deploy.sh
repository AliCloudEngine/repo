#!/bin/bash

cd `dirname $0`
BASE=`pwd`

if [ -z "$1" ] ; then
	comment=update
else
	comment="$1"
fi

(
	cat head.txt ; 
	(find com -type f | sed 's#.*#<a href="./\0">./\0</a><br/>#' ) ; 
	cat tail.txt
) > index.html &&
git add . &&
git commit -m "$comment" &&
time git push
