#!/bin/env bash

url="https://loremflickr.com/320/240/cat"

# for loop sebanyak 28 kali dengan nama pdkt_kusuma_nomor
for i in {1..28}
  do
    wget -a wget.log -O pdkt_kusuma_$i -nd -r $url
  done
