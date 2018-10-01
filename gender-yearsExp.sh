#Creates a file that contains the unique gender-years experience combinations present in the wages.csv
#Usage: bash wages.csv



cat $@ |cut -d , -f1,2 |sed 's/,/ /g' |sed '/gender/d'|sort -k1,1 -k2,2n |uniq >gender-yearsExp.csv

