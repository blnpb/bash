#!/bin/sh
FILE=/tmp/japan
for i in `cat $FILE`; do
	nslookup $i | grep name | awk '{ print $4 }' | sed s/\.$//g  >> /tmp/lookup_val.log
done

