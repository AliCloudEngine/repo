#!/bin/bash

cd `dirname $0`
BASE=`pwd`

comment=${1:-update}

find com -name .DS_Store -delete

{
	cat head.txt
	find com -type f -not -wholename 'com/aliyun/openservices/*' | sed 's#.*#<a href="./\0">./\0</a><br/>#'
	cat tail.txt
} > index.html
