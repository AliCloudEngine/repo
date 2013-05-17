#!/bin/bash

cd `dirname $0`
BASE=`pwd`

comment=${1:-update}
 
{
	cat head.txt
	find com -type f | sed 's#.*#<a href="./\0">./\0</a><br/>#'
	cat tail.txt
} > index.html &&
git add . &&
git commit -m "$comment" &&
time git push
