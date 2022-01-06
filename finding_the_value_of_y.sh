clear
read -p "Enter the value of x: " x
read -p "Enter the value of n: " n
case $n in
1)res=`expr 1 + $x \* $x`;;
2)res=`expr 1 + $x / $n`;;
3)res=`expr 1 + $x \* 2`;;
*)res=`expr 1 + $x \* $n`;;
esac
echo y = $res
