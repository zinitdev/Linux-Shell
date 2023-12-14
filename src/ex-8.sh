#!/bin/bash

read -p "Nhập N: " number

sum=0
i=0

while [ $i -le $number ]; do
    sum=$((sum + i))
    i=$((i + 1))
done

echo "Tổng từ 0 - $number: $sum"