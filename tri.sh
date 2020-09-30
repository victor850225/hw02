for((i=1;i<=5;i++))
do
for((j=5-i;j>0;j--)); do printf " "; done
count=$i
while [ $count -gt 0 ]
do
printf "$i "
((count--))
done
printf "\n"

done

for ((i=1;i<=5;i++))
do
for((j=5-i;j>0;j--)); do printf " "; done
count=$i
while [ $count -gt 0 ]
do printf "· "
((count--))
done
printf "\n"

done
