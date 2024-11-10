#!/bin/bash

domain=$1
waybackurls $1 | tee -a /home/haule/BUGBOUNTY/Datas/$domain/$1_endpoint.txt
