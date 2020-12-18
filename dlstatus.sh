#!/bin/bash

#fileinfo


for (( i=1; i<=11; i++ ))
do
	if [ $i -lt 10 ] ; then
		droplet="dl0$i"
	else
		droplet="dl$i"
	fi
	ping -c 1 $droplet > /dev/null 2>&1
	OKAY=$?

	if [ $OKAY -eq 0 ] ; then
		echo "$droplet : alive"
	else
		echo "$droplet : dead"
	fi
done

exit 0
