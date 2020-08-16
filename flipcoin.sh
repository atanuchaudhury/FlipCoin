#! /bin/bash

i=1
count1=0;
count2=0;
while (( $i<=11 ))
do
Flip=$((RANDOM%2))

case $Flip in
        1)
        coin[1]=$((count1++))
        if [[ $count1 -eq 21 ]]
        then
                break
        fi     ;;
        2)
        coin[2]=$((count2++))
        if [[ $count2 -eq 21 ]]
        then
                break
        fi     ;;
esac
done

echo ${!coin[@]}
echo ${coin[@]}

if [ $count1 -eq $count2 ]
then
        echo "Game tie"
elif [ $count1 -gt $count2 ]
then
        echo "Head won the match by $count1 "
else

        echo "Tail won the match by $count2"
fi
