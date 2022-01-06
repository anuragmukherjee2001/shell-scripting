
clear


echo "Enter two intergers"

read m n

temp=`expr $m \* $n`

while [ $m != $n ]

do

if [ $m -gt $n ]

then

m=`expr $m - $n`

else

n=`expr $n - $m`

fi

done

echo The GCD of the two numbers is=$n

lcm=`expr $temp / $n`

echo The LCM of two numbers is=$lcm


