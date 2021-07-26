#!/bin/bash -x


declare -A BirthDate
for (( i=1; i<=50; i++ ))
do
	RandomDate=$((randomDate)) 
	BirthDate[$i]=$RandomDate
done
for i in "${!BirthDate[@]}"
do
	echo $i ":" ${BirthDate[$i]}
done
count=0;
for(( i=1; i<=${#BirthDate[@]}; i++ ))
do
	var=$(( i+1 ))
	case ${BirthDate[$i]} in
		01 )
			Jan[((count++))]=$i
			;;
		02 )
			Feb[((count++))]=$i
			;;
		03 )
			Mar[((count++))]=$i
			;;
		04 )
			Apr[((count++))]=$i
			;;
		05 )
			May[((count++))]=$i
			;;
		06 )
			Jun[((count++))]=$i
			;;
		07 )
			Jul[((count++))]=$i
			;;
		08 )
			Aug[((count++))]=$i
			;;
		09 )
			Sep[((count++))]=$i;
			;;
		10 )
			Oct[((count++))]=$i;
			;;
		11 ) 
			Nov[((count++))]=$i;
			;;
		12 )
			Dec[((count++))]=$i;
			;;
		* )
			"invalid"
			;;
esac
done
