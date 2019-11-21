tr -sc "A-Za-z-0-9ÁÉÍÓÚÜáéíóúÑñ" "\n" > tmp.txt 
tail -n+2 tmp.txt > tmp2.txt 
tail -n+3 tmp.txt > tmp3.txt
paste tmp.txt tmp2.txt tmp3.txt | LC_ALL='C' sort | LC_ALL='C' uniq -c | LC_ALL='C' sort -nr
rm tmp.txt tmp2