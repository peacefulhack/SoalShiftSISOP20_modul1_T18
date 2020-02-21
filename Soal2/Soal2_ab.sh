#!/bin/bash
for i in $*
do
echo $i | sed 's/[^[:alpha:]]//g' | while read nama; do apg -M SNCL -m 28 -x 28 -n 1 > "$nama".txt; done
done
