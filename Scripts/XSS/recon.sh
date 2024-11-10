#!/bin/bash

domain=$1
mkdir -p /home/haule/BUGBOUNTY/Datas/$domain/
python3 /home/haule/BUGBOUNTY/Tools/crtsh/crtsh.py -d $domain | tee -a /home/haule/BUGBOUNTY/Datas/$domain/$1_subdomain.txt
assetfinder -subs-only $domain | tee -a /home/haule/BUGBOUNTY/Datas/$domain/$1_subdomain.txt
findomain -t $domain | tee -a /home/haule/BUGBOUNTY/Datas/$domain/$1_subdomain.txt
subfinder -d $domain | tee -a /home/haule/BUGBOUNTY/Datas/$domain/$1_subdomain.txt
python3 /home/haule/BUGBOUNTY/Tools/Sublist3r/sublist3r.py -d $domain -o /home/haule/BUGBOUNTY/Datas/$domain/$1_sublister.txt	
cat /home/haule/BUGBOUNTY/Datas/$domain/$1_sublister.txt /home/haule/BUGBOUNTY/Datas/$domain/$1_subdomain.txt > /home/haule/BUGBOUNTY/Datas/$domain/$1_all_subdomains.txt

cat /home/haule/BUGBOUNTY/Datas/$domain/$1_all_subdomains.txt | httprobe | tee -a /home/haule/BUGBOUNTY/Datas/$domain/$1_host_subs.txt
