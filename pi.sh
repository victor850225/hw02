#!/bin/bash


start=`date +%s`

RandomDraw()
{
 
numofsam=$(($1))

radius=32767
ni=0
no=0
r_sqd=$(($radius**2))
end=0
 
# Check if points are inside or outside
#for numofsam in 10 100 500 1000 5000 10000 50000
#do
#start=`date +%s`

for (( i=0; i<numofsam; i++ )); do
    x=$RANDOM
    y=$RANDOM
    p_sqd=$((($x**2)+($y**2)))
    if [[ $p_sqd -le $r_sqd ]] 
        then
            ni=$(($ni+1))
        else
            no=$(($no+1))
    fi

done

printf "$numofsam  $ni  $no, "
printf $(echo "scale=6; 4*$ni/$numofsam " | bc -l)

if [ $(echo "4*$ni/$numofsam-3.14>0"|bc -l) -eq 1 ]; then
  temp=1
else
  temp=-1
fi

end=$((end + `date +%s`))
runtime=$( echo "scale=4; $end-$start" | bc -l )
printf  ' %.4f' " $(echo "scale=6; (4*$ni/$numofsam-3.14)*$temp/3.14" | bc -l)"
#printf ' %.4f\n' " $( echo "$end-$start" | bc -l )"
printf ' %.4f\n' " $runtime"
#done
}


RandomDraw 10
RandomDraw 100
RandomDraw 500
RandomDraw 1000
RandomDraw 5000
RandomDraw 10000
RandomDraw 50000
