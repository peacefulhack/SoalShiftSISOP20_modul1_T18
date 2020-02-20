awk '
BEGIN{central=0;west=0;south=0;east=0}
$13 ~/Central/ {central = central + $21}
$13 ~/West/ {west = west + $21}
$13 ~/South/ {south = south + $21}
$13 ~/East/ {east = east + $21}
END{if ( centrai < west && central < south && central < east )printf "hasil terkecil dari region central dengan jumlah %d\n",central;
    else if(west<central && west<south && west<east)printf "hasil terkecil dari region west dengan jumlah %d\n",west;
    else if(south<central && south<west && south<east)printf "hasil terkecil dari region south dengan jumlah %d\n",south;
    else if(east<central && east<west && east<south)printf "hasil terkecil dari region east dengan jumlah %d\n",east;
    else {print "error";}
 }
' FPAT='([^,]+)|("[^"]+")' Sample-Superstore.csv
