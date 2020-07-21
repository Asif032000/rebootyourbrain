read -p "enter a number:" num 



#for i in `seq $num` 
#do
#	if [ `expr $num % $i `  == 0   ]
#		then echo $num /$i =  `expr $num / $i ` , remainder= `expr $num % $i `
#	else 
#		echo failed : `expr $num % $i ` 
#	fi
#done

echo Factors of $num are : 
fact(){
for i in `seq 2 $num `
do 
	
	if [ `expr $num % $i `  == 0   ]
		then #echo $num /$i =  `expr $num / $i ` , remainder= `expr $num % $i `
		echo : $i 
		return `expr $num / $i`
#	else
#		echo failed: `expr $num % $i `
	fi 
done
}
while [[ `expr $num` -ne 1 ]]
do 
	fact
	num=$?
#	echo return value is : $num
done
