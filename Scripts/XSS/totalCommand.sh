#!/bin/bash

domain=$1
/home/haule/BUGBOUNTY/Scripts/XSS/recon.sh $1
cd /home/haule/BUGBOUNTY/Datas/$1
/home/haule/BUGBOUNTY/Scripts/XSS/useParamSpider.sh /home/haule/BUGBOUNTY/Datas/$1/$1_host_subs.txt
for d in /home/haule/BUGBOUNTY/Datas/$1/output/https:/*;
do
	cat "${d}" | /root/go/bin/kxss
done;


