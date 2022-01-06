clear
drawSquare(){
  read -p "Enter the size of the square: " size
  tput clear
  for (( i=1; i<=size; i++ ))
  do
    for (( j=1; j<=size; j++ ))
    do
      if [ "$i" -eq 1 ] || [ "$i" -eq "$size" ] || [ "$j" -eq 1 ] || [ "$j" -eq "$size" ]
      then
        tput cup $i $j
        echo "* "
      fi
    done
  done
}

drawSquare;
