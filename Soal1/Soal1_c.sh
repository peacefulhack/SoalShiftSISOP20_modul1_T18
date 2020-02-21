awk '
{
  if($11 == "Texas" || $11 == "Illinois")a[$17] += $21
}
END{
  for (i in a){
    print a[i], i;
  }
}
' FPAT='([^,]+)|("[^"]+")' Sample-Superstore.csv | sort -g | head -n 10
