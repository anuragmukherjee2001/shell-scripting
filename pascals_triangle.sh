clear
read -p "Enter the number of rows: " r
coef=1
for (( i=0; i<$r; i++))
do
  for(( sp=1; sp<=$((r-i)); sp++ ))
  do
    echo -n " "
  done
  for(( j=0; j<=$i; j++ ))
  do
    if [ $j -eq 0 ] || [ $i -eq 0 ]
    then
      coef=1
    else
      coef=`expr $coef \* $[$i-$j+1] / $j`
    fi
    echo -n "$coef "
  done
  echo
done
