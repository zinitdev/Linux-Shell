#!/bin/bash

read -p "Nhập họ tên, năm sinh " name year

now=$(date +%Y)

age=$((now - year))

sex=""

if [[ $age -gt 45 ]]
then
    sex="cô/chú"
elif [[ $age -ge 20 && $age -le 45 ]]
then
    sex="anh/chị"
else 
    sex="bạn"
fi

echo "Xin chào $sex $name
Năm nay $age tuổi."