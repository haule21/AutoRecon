#!/bin/bash

domain=$1
./recon.sh $1
cd ../../Datas/$1
./useParamSpider.sh ../../Datas/$1/$1_host_subs.txt
for d in ../../Datas/$1/output/https:/*;
do
	cat "${d}" | /root/go/bin/kxss
done;


