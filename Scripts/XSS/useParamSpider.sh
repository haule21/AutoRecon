#!/bin/bash

urllist=$1
for URL in $(<$1); do (python3 /home/haule/BUGBOUNTY/Tools/ParamSpider/paramspider.py -d "${URL}"); done;

# cat filtered_urls.txt | kxss