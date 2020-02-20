awk 'BEGIN{a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=0;i=0;j=0;k=0;l=0;m=0;satu=100000;dua=1000000;nsatu="";ndua=""}
$11 ~/Wisconsin/ {a = a + $21}
$11 ~/Illinois/ {b = b + $21}
$11 ~/Indiana/ {c = c + $21}
$11 ~/Iowa/ {d = d + $21}
$11 ~/Kansas/ {e = e + $21}
$11 ~/Michigan/ {f = f + $21}
$11 ~/Minnesota/ {g = g + $21}
$11 ~/Missouri/ {h = h + $21}
$11 ~/Nebraska/ {i = i + $21}
$11 ~/North Dakota/ {j = j + $21}
$11 ~/Oklahoma/ {k = k + $21}
$11 ~/South Dakota/ {l = l + $21}
$11 ~/Texas/ {m = m + $21}

END {
satu = a;nsatu="Wisconsin";
if(b<satu){satu=b;nsatu="Illinois";}
if(c<satu){satu=c;nsatu="Indiana";}
if(d<satu){satu=d;nsatu="Iowa";}
if(e<satu){satu=e;nsatu="Kansas";}
if(f<satu){satu=f;nsatu="Michigan";}
if(g<satu){satu=g;nsatu="Minnesota";}
if(h<satu){satu=h;nsatu="Missouri";}
if(i<satu){satu=i;nsatu="Nebraska";}
if(j<satu){satu=j;nsatu="North Dakota";}
if(k<satu){satu=k;nsatu="Oklahoma";}
if(l<satu){satu=l;nsatu="South Dakota";}
if(m<satu){satu=m;nsatu="Texas";}

if(b<dua && b>satu){dua=b;ndua="Illinois";}
if(c<dua && c>satu){dua=c;ndua="Indiana";}
if(d<dua && d>satu){dua=d;ndua="Iowa";}
if(e<dua && e>satu){dua=e;ndua="Kansas";}
if(f<dua && f>satu){dua=f;ndua="Michigan";}
if(g<dua && g>satu){dua=g;ndua="Minnesota";}
if(h<dua && h>satu){dua=h;ndua="Missouri";}
if(i<dua && i>satu){dua=i;ndua="Nebraska";}
if(j<dua && j>satu){dua=j;ndua="North Dakota";}
if(k<dua && k>satu){dua=k;ndua="Oklahoma";}
if(l<dua && l>satu){dua=l;ndua="South Dakota";}
if(m<dua && m>satu){dua=m;ndua="Texas";}


printf"\na %d b %d c %d d %d e %d f %d g %d h %d i %d j %d k %d l %d m %d\n",a,b,c,d,e,f,g,h,i,j,k,l,m;
printf "\nterkecil pertama adalah %s berjumlah %d\nkedua adalah %s berjumlah %d\n",nsatu,satu,ndua,dua;
}' FPAT='([^,]+)|("[^"]+")' Sample-Superstore.csv
