# college degree minimum wage - no college minimum wage. 

echo "The difference in minimum wage between college and non college educated persons in this data set is" 
val1=$(cat wages.csv |cut -d , -f3,4 |grep -E ^12 |cut -d , -f2|sort -n |head -n 1)
val2=$(cat wages.csv |cut -d , -f3,4 |grep -E ^16 |cut -d, -f2 |sort -n |head -n 1)
echo "$val2 - $val1" |bc


