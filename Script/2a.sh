#!/bin/bash
for i in $*
do
$i | sed 's/[^[:alpha:]]//g' $i

apg -M SNCL -m 28 -x 28 -n 1 > "`$nama`".txt
done
