awk 'BEGIN {satu = 0;dua = 0; nsatu = ""; ndua = ""}
{
if($13 == "Central")a[$11] += $21
}
END{
for (i in a){
  if(satu == 0){
    satu = a[i];
    nsatu = i;
  }
  else{
    if(kcl>a[i]){satu = a[i]; nsatu = i;}
  }
}
for (i in a){
  if(dua == 0){
    dua = a[i];
    ndua = i;
  }
  else{
    if(a[i]<dua && a[i]>satu){dua = a[i]; ndua = i;}
  }
}
print satu , nsatu, "\n", dua, ndua;
}
' FPAT='([^,]+)|("[^"]+")' Sample-Superstore.csv
