#!/bin/bash

domain=$1
waybackurls $1 | tee -a ../../Datas/$domain/$1_endpoint.txt
