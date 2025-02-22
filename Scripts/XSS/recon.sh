#!/bin/bash

domain=$1
mkdir -p ../../Datas/$domain/
python3 ../../Tools/crtsh/crtsh.py -d $domain | tee -a ../../Datas/$domain/$1_subdomain.txt
assetfinder -subs-only $domain | tee -a ../../Datas/$domain/$1_subdomain.txt
findomain -t $domain | tee -a ../../Datas/$domain/$1_subdomain.txt
subfinder -d $domain | tee -a ../../Datas/$domain/$1_subdomain.txt
python3 ../../Tools/Sublist3r/sublist3r.py -d $domain -o ../../Datas/$domain/$1_sublister.txt	
cat ../../Datas/$domain/$1_sublister.txt ../../Datas/$domain/$1_subdomain.txt > ../../Datas/$domain/$1_all_subdomains.txt

cat ../../Datas/$domain/$1_all_subdomains.txt | httprobe | tee -a ../../Datas/$domain/$1_host_subs.txt
