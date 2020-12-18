#!/bin/bash

DIR="."

WC-'ls -l $DIR | wc -1'

echo "number of files in $DIR : "$WC

if [ $WC -lt 10] ; then
	echo "less than 10 files"
else
	echo "greater than 10 files"
fi

exit 0

