#!/bin/bash -x

counter=0
Fruits[((counter++))]="Mango"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]="Grapes"
Fruits[((counter++))]="987"
Fruits[((counter++))]=123

Names=( abc def 193 pqr mno 999 )

echo ${Fruits[@]}
echo ${Names[*]}
