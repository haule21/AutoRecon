#!/bin/bash

if test -d ../../Data/$1/output/https:/*; then
	echo "First need recon"
fi
	
for d in ../../Datas/$1/output/https:/*;
do
        cat "${d}" | /root/go/bin/kxss
done;

