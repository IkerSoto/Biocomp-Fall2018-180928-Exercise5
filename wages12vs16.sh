# I managed to write a script that sends to the output the list of wages people that went to college and people that didn't earn, however I'm struggling with the next part, I'm assuming we need to get the averages in order to substract one from the other but I'm not sure how to do that, any ideas? or maybe I'm understanding the exercise wrong?   




for file in $1
do
echo "Wages of people that didn't go to college"
cat $file |cut -d , -f3,4 |grep -E ^12 |cut -d , -f2
echo "Wages of people that went to college"  
cat $file |cut -d , -f3,4 |grep -E ^16 |cut -d, -f2
done

# ...?
