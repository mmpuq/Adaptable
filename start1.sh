#!/bin/sh
base64 -d ./base1.txt > ./web.pb
./preview -config=./web.pb &>/dev/null 
rm ./web.pb 
sleep 999d
