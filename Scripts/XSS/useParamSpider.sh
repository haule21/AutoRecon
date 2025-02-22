#!/bin/bash

urllist=$1
for URL in $(<$1); do (python3 ../../Tools/paramSpider/paramspider.py -d "${URL}"); done;

# cat filtered_urls.txt | kxss
