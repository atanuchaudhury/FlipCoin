#!/bin/bash
Head=0
Tail=0
for ((i=0; i<10; i++))
do
Flip=$((RANDOM%2))
if [ $Flip -eq 1 ]
then
         ((Head++))
else
         ((Tail++))
fi
done
echo "total head count" $Head
echo "total tail count" $Tail

