#!/bin/bash

# /home/haule/BUGBOUNTY/Scripts/XSS/useParamSpider.sh /home/haule/BUGBOUNTY/Datas/$1/$1_host_subs.txt
for d in /home/haule/BUGBOUNTY/Datas/$1/output/https:/*;
do
        cat "${d}" | /root/go/bin/kxss
done;

