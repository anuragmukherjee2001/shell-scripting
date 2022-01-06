clear
echo "Enter the starting range"
read i
echo "Enter the ending range"
read end 

while [ $i -le $end ]
do
c=$i
d=$i
b=0
a=0

while [ $c -gt 0 ]
do

a=$((c%10))


b=$((b + a*a*a))
c=$((c/10))
done

if [ $b -eq $d ]
then
	echo "$i"
fi

i=$((i+1))
done
