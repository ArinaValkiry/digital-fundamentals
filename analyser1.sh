#!/bin/bash

for file in $(ls $1)
do
    echo "Info of $1$file"
    for info in $(cat $1$file)
    do
        name=$(echo $info | cut -d ":" -f1)
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)
        echo "Имена: $name, Возраст: $age, Почта: $email"
    done

done
