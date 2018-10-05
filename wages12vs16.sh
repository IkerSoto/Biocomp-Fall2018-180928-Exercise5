# college degree minimum wage - no college minimum wage. 

echo "The difference in minimum wage between college and non college educated persons in this data set is" 
var1="$(cat wages.csv |cut -d , -f3,4 |grep -E ^12 |cut -d , -f2|sort -n |head -n 1)
var2="$(cat wages.csv |cut -d , -f3,4 |grep -E ^16 |cut -d, -f2 |sort -n |head -n 1)
echo "$var2 - $var1" | bc


