#Calculates the difference between the average minimum wage of a person that graduated college (16 years of education) and one that didn't (12 years of education).
#Usage: bash wages12vs16.sh wages.csv

12years=$(cat wages.csv |cut -d, -f3,4|grep -E ^12 |awk -F ','  '{sum +=$2} END {print sum/NR}')
16years=$(cat wages.csv |cut -d, -f3,4|grep -E ^16 |awk -F ','  '{sum +=$2} END {print sum/NR}')

echo "On average people that graduated college earn:"
echo "$16years - $12years" |bc
echo "more than people that didn't finish it"


