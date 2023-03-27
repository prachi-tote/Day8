#Roll dice and store in dictionary and find max and min occurance of a no.

#!/bin/bash
i=1;
flag=1;
lenOne=0;lenTwo=0;lenThree=0;lenFour=0;lenFive=0;lenSix=0;

while [ $flag -eq 1 ]
do
	dice[$i]=$(shuf -i 1-6 -n 1)

case ${dice[$i]} in
	1)
		lenOne=$(($lenOne+1));;
	2)
		lenTwo=$(($lenTwo+1));;
	3)
		lenThree=$(($lenThree+1));;
	4)
		lenFour=$(($lenFour+1));;
	5)
		lenFive=$(($lenFive+1));;
	6)
		lenSix=$(($lenSix+1));
if [ $lenOne -eq 10 -o $lenTwo -eq 10 -o $lenThree -eq 10 -o $lenFour -eq 10 -o $lenFive -eq 10 -o $lenSix -eq 10 ]
then
	flag=0
else
	flag=1
fi
esac
i=$(($i+1))
done
echo ${dice[@]}
echo "1=$lenOne 2=$lenTwo 3=$lenThree 4=$lenFour 5=$lenFive 6=$lenSix"

if [ $lenOne -ge $lenTwo -a $lenOne -ge $lenThree -a $lenOne -ge $lenFour -a $lenOne -ge $lenFive -a $lenOne -ge $lenSix ]
then
	echo "1 is Maximum";
	if [ $lenTwo -le $lenThree -a $lenTwo -le $lenFour -a $lenTwo -le $lenFive -a $lenTwo -le $lenSix ]
	then
		echo "2 is Minimum";
	elif [ $lenThree -le $lenOne -a $lenThree -le $lenFour -a $lenThree -le $lenFive -a $lenThree -le $lenSix ]
	then
		echo "3 is Minimum";
	elif [ $lenFour -le $lenTwo -a $lenFour -le $lenThree -a $lenFour -le $lenFive -a $lenFour -le $lenSix ]
	then	
	echo "4 is Minimum";
	elif [ $lenFive -le $lenTwo -a $lenFive -le $lenThree -a $lenFive -le $lenFour -a $lenFive -le $lenSix ]
	then
		echo "5 is Minimum";
	else
		echo "6 is Minimum";
	fi
elif [ $lenTwo -ge $lenThree -a $lenTwo -ge $lenFour -a $lenTwo -ge $lenFive -a $lenTwo -ge $lenSix ]
then
   echo "2 is Maximum";
   if [ $lenOne -le $lenThree -a $lenOne -le $lenFour -a $lenOne -le $lenFive -a $lenOne -le $lenSix ]
   then
      echo "1 is Minimum";
   elif [ $lenThree -le $lenOne -a $lenThree -le $lenFour -a $lenThree -le $lenFive -a $lenThree -le $lenSix ]
   then
      echo "3 is Minimum";
   elif [ $lenFour -le $lenOne -a $lenFour -le $lenThree -a $lenFour -le $lenFive -a $lenFour -le $lenSix ]
   then   
	echo "4 is Minimum";
   elif [ $lenFive -le $lenOne -a $lenFive -le $lenThree -a $lenFive -le $lenFour -a $lenFive -le $lenSix ]
   then
      echo "5 is Minimum";
   else
      echo "6 is Minimum";
	fi
elif [ $lenThree -ge $lenFour -a $lenThree -ge $lenFive -a $lenThree -ge $lenSix ]
then
   echo "3 is Maximum";
   if [ $lenOne -le $lenTwo -a $lenOne -le $lenFour -a $lenOne -le $lenFive -a $lenOne -le $lenSix ]
   then
      echo "1 is Minimum";
   elif [ $lenTwo -le $lenOne -a $lenTwo -le $lenFour -a $lenTwo -le $lenFive -a $lenTwo -le $lenSix ]
   then
      echo "2 is Minimum";
   elif [ $lenFour -le $lenOne -a $lenFour -le $lenTwo -a $lenFour -le $lenFive -a $lenFour -le $lenSix ]
   then   
	echo "4 is Minimum";
   elif [ $lenFive -le $lenOne -a $lenFive -le $lenTwo -a $lenFive -le $lenFour -a $lenFive -le $lenSix ]
   then
      echo "5 is Minimum";
   else
      echo "6 is Minimum";
	fi
elif [ $lenFour -ge $lenFive -a $lenFour -ge $lenSix ]
then
   echo "4 is Maximum";
   if [ $lenOne -le $lenTwo -a $lenOne -le $lenThree -a $lenOne -le $lenFive -a $lenOne -le $lenSix ]
   then
      echo "1 is Minimum";
   elif [ $lenTwo -le $lenOne -a $lenTwo -le $lenThree -a $lenTwo -le $lenFive -a $lenTwo -le $lenSix ]
   then
      echo "2 is Minimum";
   elif [ $lenThree -le $lenOne -a $lenThree -le $lenTwo -a $lenThree -le $lenFive -a $lenThree -le $lenSix ]
   then
	echo "3 is Minimum";
   elif [ $lenFive -le $lenOne -a $lenFive -le $lenTwo -a $lenFive -le $lenThree -a $lenFive -le $lenSix ]
   then
      echo "5 is Minimum";
   else
      echo "6 is Minimum";
	fi
elif [ $lenFive -ge $lenSix ]
then
   echo "5 is Maximum";
   if [ $lenOne -le $lenTwo -a $lenOne -le $lenThree -a $lenOne -le $lenFour -a $lenOne -le $lenSix ]
   then
      echo "1 is Minimum";
   elif [ $lenTwo -le $lenOne -a $lenTwo -le $lenThree -a $lenTwo -le $lenFour -a $lenTwo -le $lenSix ]
   then
      echo "2 is Minimum";
   elif [ $lenThree -le $lenOne -a $lenThree -le $lenTwo -a $lenThree -le $lenFour -a $lenThree -le $lenSix ]
   then
	echo "3 is Minimum";
   elif [ $lenFour -le $lenOne -a $lenFour -le $lenTwo -a $lenFour -le $lenThree -a $lenFour -le $lenSix ]
   then
      echo "4 is Minimum";
   else
      echo "6 is Minimum";
	fi
else
	echo "6 is Maximum";
	if [ $lenOne -le $lenTwo -a $lenOne -le $lenThree -a $lenOne -le $lenFour -a $lenOne -le $lenFive ]
   then
      echo "1 is Minimum";
   elif [ $lenTwo -le $lenOne -a $lenTwo -le $lenThree -a $lenTwo -le $lenFour -a $lenTwo -le $lenFive ]
   then
      echo "2 is Minimum";
   elif [ $lenThree -le $lenOne -a $lenThree -le $lenTwo -a $lenThree -le $lenFour -a $lenThree -le $lenFive ]
   then
	echo "3 is Minimum";
   elif [ $lenFour -le $lenOne -a $lenFour -le $lenTwo -a $lenFour -le $lenThree -a $lenFour -le $lenFive ]
   then
      echo "4 is Minimum";
   else
      echo "5 is Minimum";
	fi
fi
