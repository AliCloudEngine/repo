#!/bin/bash

cd `dirname $0`
BASE=`pwd`

comment=${1:-update}

find com -name .DS_Store -delete

{
	cat head.txt
	find com -type f -not -wholename 'com/aliyun/openservices/*' | awk '{print "<a href=\"./"$1"\">./"$1"</a><br/>"}'
	cat tail.txt
} > index.html
