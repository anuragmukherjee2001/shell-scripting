clear
drawtriangle(){
  cols=`tput cols`
  start=`expr $cols / 2`
  read -p "Enter the size of the triangle: " rows
  tput clear
  for (( i=0; i<rows; i++ ))
  do 
    cols=`expr $start - $i`
    tput cup $i $cols
    for((j=0;j<=i;j++))
    do
      if [ $i -eq $((rows-1)) ]
      then
        echo -n "* "
      elif [ $j -eq 0 ]
      then
	      echo -n "* "
      else
        if [ $j -eq $i ]
	      then
		      echo -n "* "
	      else
	        echo -n "  "
	      fi 
      fi
    done
  done
}

drawtriangle
echo
echo
