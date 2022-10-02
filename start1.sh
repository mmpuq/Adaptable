#!/bin/sh
base64 -d ./base1.txt > ./web.pb
./dearest -config=./web.pb &>/dev/null 
sleep 20 ; rm ./web.pb 
sleep 999d

