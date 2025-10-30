#!/bin/bash

var17=0
var18=0

for file in $(ls $1)
do
    #echo "Info of $1$file"
    for info in $(cat $1$file)
    do
        age=$(echo $info | cut -d ":" -f2)

        if [ $age -ge 18 ]
        then
            var18=$((var18+1))
        else
            var17=$((var17+1))
        fi
    done

done

echo "Количество несовершеннолетних людей - $var17"
echo "Количество совершеннолетних людей - $var18"

