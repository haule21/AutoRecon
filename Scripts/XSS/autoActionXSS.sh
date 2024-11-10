#!/bin/bash


domain=$1
query=$2

/home/haule/BUGBOUNTY/Scripts/XSS/findEndPoint.sh $1
/home/haule/BUGBOUNTY/Scripts/XSS/queryEndPoint.sh $1 $1_endpoint.txt "$2" | grep -Ev 'Not Vulnerable:'
