#!/bin/bash

domain=$1
endpointfilename=$2
query=$3
cat ../../Datas/$1/$2 | qsreplace "$3" | tee -a ../../Datas/$1/$1_xss_fuzz.txt
cat ../../Datas/$1/$1_xss_fuzz.txt | go run ../../Tools/freq/main.go
