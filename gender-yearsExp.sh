#Creates a file that contains the unique gender-years experience combinations present in the wages.csv
#Usage: bash wages.csv



cat $@ |cut -d , -f1,2 |sed 's/,/ /g' |sed '/gender/d'|sort -k1,1 -k2,2n |uniq >gender-yearsExp.csv

#run bash gender-yearsExp.sh wages.csv for the Activity 2 answers

echo "This is activity 2"
echo "The gender, years experience and wage of the highest earner is"
cat $@ | sed 's/,/ /g' | sort -n -k 4 |awk '{print $1, $2, $4}'| tail -n 1

echo "The gender, years experience, and wage of the lowest earner is"
cat $@ | sed 's/,/ /g' | sort -n -k 4 |awk '{print $1, $2, $4}'| head -n 2 | tail -n 1| cut -f 1

echo "The number of females in the top ten earners in this data set is"
cat $@ | sed 's/,/ /g' | sort -n -k 4 | tail -n 10| grep -c -w "female"



