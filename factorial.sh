
result=1
echo "Enter a number(for factorial)"
read num

while [ $num -gt 1 ]
do
result=`expr $result \* $num`
((num--))
done

echo $result


