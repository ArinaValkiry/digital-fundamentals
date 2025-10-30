#!/bin/bash

min=100
max=0

for file in $(ls $1)
do
    for info in $(cat $1$file)
    do
        name=$(echo $info | cut -d ":" -f1)
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)

        if [ $age -gt $max ]
        then
            max=$age
            echo "Самый молодой пользователь: $name $max $email "
        elif [ $age -lt $min ]
        then
            min=$age
            echo "Самый старый пользователь: $name $min $email"
        fi

    done

done

#echo "Самый молодой пользователь: "
#echo "Самый старый пользователь: "
