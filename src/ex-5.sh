#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Lỗi: Bạn cần phải truyền đủ 3 đối số."
    exit 1
fi

num1=$1
num2=$2
num3=$3

sum=$((num1 + num2 + num3))

echo "Tổng của ba số là: $sum"