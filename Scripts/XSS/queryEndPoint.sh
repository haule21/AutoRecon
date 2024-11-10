#!/bin/bash

domain=$1
endpointfilename=$2
query=$3
cat /home/haule/BUGBOUNTY/Datas/$1/$2 | qsreplace "$3" | tee -a /home/haule/BUGBOUNTY/Datas/$1/$1_xss_fuzz.txt
cat /home/haule/BUGBOUNTY/Datas/$1/$1_xss_fuzz.txt | go run /home/haule/BUGBOUNTY/Tools/freq/main.go
