#!/bin/bash -x


a=$(((RANDOM%899) + 100))
b=$(((RANDOM%899) + 100))
c=$(((RANDOM%899) + 100))
d=$(((RANDOM%899) + 100))
e=$(((RANDOM%899) + 100))

if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ] && [ $a -gt $e ]
	then 
		echo out of $a $b $c $d $e Maximum Value is $a
elif [ $b -gt $a ] && [ $b -gt $c ] && [ $b -gt $d ] && [ $b -gt $e ]		
	then
		echo out of $a $b $c $d $e Maximum Value is $b
elif [ $c -gt $a ] && [ $c -gt $b ] && [ $c -gt $d ] && [ $c -gt $e ]
	then
		echo out of $a $b $c $d $e Maximum Value is $c
elif [ $d -gt $a ] && [ $d -gt $b ] && [ $d -gt $c ] && [ $d -gt $e ]
	then
		echo out of $a $b $c $d $e Maximum Value is $d
elif [ $e -gt $a ] && [ $e -gt $b ] && [ $e -gt $c ] && [ $e -gt $d ]
	then
		echo out of $a $b $c $d $e Maximum Value is $e
fi

if [ $a -lt $b ] && [ $a -lt $c ] && [ $a -lt $d ] && [ $a -lt $e ]
   then
      echo out of $a $b $c $d $e Minimum Value is $a
elif [ $b -lt $a ] && [ $b -lt $c ] && [ $b -lt $d ] && [ $b -lt $e ]
   then
      echo out of $a $b $c $d $e Minimum Value is $b
elif [ $c -lt $a ] && [ $c -lt $b ] && [ $c -lt $d ] && [ $c -lt $e ]
   then
      echo out of $a $b $c $d $e Minimum Value is $c
elif [ $d -lt $a ] && [ $d -lt $b ] && [ $d -lt $c ] && [ $d -lt $e ]
   then
      echo out of $a $b $c $d $e Minimum Value is $d
elif [ $e -lt $a ] && [ $e -lt $b ] && [ $e -lt $c ] && [ $e -lt $d ]
   then
      echo out of $a $b $c $d $e Minimum Value is $e
fi

