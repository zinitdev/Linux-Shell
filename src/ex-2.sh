#!/bin/bash

read -p "Nhập họ tên và năm sinh " name year

now=$(date +%Y)

echo "Xin chào, $name
Năm nay bạn $(($now - $year)) tuổi."