#!/bin/bash -x

declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sound - " ${sounds[dog]}
echo "All Animal sounds - " ${sounds[@]}
echo "All Animals - " ${!sounds[@]}
echo "Number of Animals - " ${#sounds[@]}
unset sounds[bird]
echo "After deleting all animals - " ${!sounds[*]}

