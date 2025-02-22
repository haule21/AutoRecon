#!/bin/bash


domain=$1
query=$2

./findEndPoint.sh $1
./queryEndPoint.sh $1 $1_endpoint.txt "$2" | grep -Ev 'Not Vulnerable:'
