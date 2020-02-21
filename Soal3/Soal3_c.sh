#!/bin/env bash

for x in {1..28}
do
  for i in ./*;
    do
      cmp "$i" pdkt_kusuma_$x;
      if [[ $? == 0 ]]; then
        mkdir duplicate
        mv pdkt_kusuma_$i /home/ghifari/duplicate/duplicate_$i
      fi
    done
done
