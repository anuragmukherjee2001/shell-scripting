clear
echo "Enter number you want to Enter: "
read n
x=0
y=1
for (( i=1 ; i <= $n ; i++ ))
do
  echo -n "$x "
    z=`expr $x + $y`
    x=$y
    y=$z
  #echo ""
done
