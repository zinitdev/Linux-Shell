#!/bin/bash

echo "Nhập số thứ nhất (từ 10 đến 99):"
read num1

if ! [[ $num1 -ge 10 && $num1 -le 99 ]]; then
    echo "Lỗi: Số thứ nhất nằm ngoài khoảng từ 10 đến 99."
    exit 1
fi


echo "Nhập số thứ hai (từ 10 đến 99):"
read num2

if ! [[ $num2 -ge 10 && $num2 -le 99 ]]; then
    echo "Lỗi: Số thứ hai nằm ngoài khoảng từ 10 đến 99."
    exit 1
fi


echo "Nhập số thứ ba (từ 10 đến 99):"
read num3


if ! [[ $num3 -ge 10 && $num3 -le 99 ]]; then
    echo "Lỗi: Số thứ ba nằm ngoài khoảng từ 10 đến 99."
    exit 1
fi

sum=$((num1 + num2 + num3))

echo "Tổng của ba số là: $sum"
