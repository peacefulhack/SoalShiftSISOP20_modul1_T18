#!/usr/bin/env bash
A=$(date +%H)
for i in $*
do
  echo $i |
  sed 's/[^[:alpha:]]//g' |
      if [[ "$A" == "00" ]]; then
          tr '[A-Za-z]' '[A-Za-z]'
        elif [[ "$A" == "01" ]]; then
          tr '[A-Za-z]' '[B-ZAb-za]'
        elif [[ "$A" == "02" ]]; then
          tr '[A-Za-z]' '[C-ZA-Bc-za-b]'
        elif [[ "$A" == "03" ]]; then
          tr '[A-Za-z]' '[D-ZA-Cd-za-c]'
        elif [[ "$A" == "04" ]]; then
          tr '[A-Za-z]' '[E-ZA-De-za-d]'
        elif [[ "$A" == "05" ]]; then
          tr '[A-Za-z]' '[F-ZA-Ef-za-e]'
        elif [[ "$A" == "06" ]]; then
          tr '[A-Za-z]' '[G-ZA-Fg-za-f]'
        elif [[ "$A" == "07" ]]; then
          tr '[A-Za-z]' '[H-ZA-Gh-za-g]'
        elif [[ "$A" == "08" ]]; then
          tr '[A-Za-z]' '[I-ZA-Hi-za-h]'
        elif [[ "$A" == "09" ]]; then
          tr '[A-Za-z]' '[J-ZA-Ij-za-i]'
        elif [[ "$A" == "10" ]]; then
          tr '[A-Za-z]' '[K-ZA-Jk-za-j]'
        elif [[ "$A" == "11" ]]; then
          tr '[A-Za-z]' '[L-ZA-Kl-za-k]'
        elif [[ "$A" == "12" ]]; then
          tr '[A-Za-z]' '[M-ZA-Lm-za-l]'
        elif [[ "$A" == "13" ]]; then
          tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
        elif [[ "$A" == "14" ]]; then
          tr '[A-Za-z]' '[O-ZA-No-za-n]'
        elif [[ "$A" == "15" ]]; then
          tr '[A-Za-z]' '[P-ZA-Op-za-o]'
        elif [[ "$A" == "16" ]]; then
          tr '[A-Za-z]' '[Q-ZA-Pq-za-p]'
        elif [[ "$A" == "17" ]]; then
          tr '[A-Za-z]' '[R-ZA-Qr-za-q]'
        elif [[ "$A" == "18" ]]; then
          tr '[A-Za-z]' '[S-ZA-Rs-za-r]'
        elif [[ "$A" == "19" ]]; then
          tr '[A-Za-z]' '[T-ZA-St-za-s]'
        elif [[ "$A" == "20" ]]; then
          tr '[A-Za-z]' '[U-ZA-Tu-za-t]'
        elif [[ "$A" == "21" ]]; then
          tr '[A-Za-z]' '[V-ZA-Uv-za-u]'
        elif [[ "$A" == "22" ]]; then
          tr '[A-Za-z]' '[W-ZA-Vw-za-v]'
        elif [[ "$A" == "23" ]]; then
          tr '[A-Za-z]' '[X-ZA-Wx-za-w]'
      fi |
    while read nama;
      do
          apg -M SNCL -m 28 -x 28 -n 1 > "$nama".txt;
    done
done
