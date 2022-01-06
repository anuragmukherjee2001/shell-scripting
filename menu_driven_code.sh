clear

echo "Enter the name of the file";
read filename;

if [ -e $filename ]
then
x=2;

while [ $x ]
do

	echo "1. Print contents of the text"
	echo "2. List of users who currently logged in"
	echo "3. Present working directory and files under current directory"
	echo "4. List of files"
	echo "5. Process of users"
	echo "6. Todays date"
	echo "7. Display the calender of any year"
	echo "8. Exit"
	read m
	case $m in
		1) cat $filename;;
		2) whoami;;
		3) pwd && ls;;
		4) ls -l;;
		5) ps;;
		6) date +%D;;
		7) echo "Enter the year"
		   read year
		   cal $year;;
		8) exit;;
		*) echo "Wrong input";;
	esac

done


else
echo "$filename does not exists"
exit
fi



