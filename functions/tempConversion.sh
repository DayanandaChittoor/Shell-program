#!/bin/bash -x

function degCtodegF() {
out=`expr $(( $t * 9/5 )) + 32`
echo $out;
}

function degFtodegC() {
out=$(( `expr $t - 32` * 5/9 ))
echo $out;
}

read -p "Enter 1 for DegF_to_DegC or 2 for DegC_to_DegF: "  option
read -p "Enter a input to perform conversion: " t
out=0;
fC=0;
fF=32;
bC=100;
bF=212;
case $option in
	1)
		if [ $t -ge $fF ] && [ $t -le $bF ]
		then
      degFtodegC $t
      fi
      ;;
      2)
 	   if [ $t -ge $fC ] && [ $t -le $bC ]
      then
      degCtodegF $t
      fi
      ;;
esac
