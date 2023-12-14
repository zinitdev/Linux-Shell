#!/bin/bash

while true; do
    if [ "$#" -ne 3 ]; then
        echo "Lỗi: Bạn cần phải truyền đủ 3 đối số."
        read -p "Nhấn Y để tiếp tục, hoặc nhấn N để thoát: " choice

        case "$choice" in
            [Yy])
                echo "Nhập lại 3 đối số:"
                read num1 num2 num3

                sum=$((num1 + num2 + num3))

                echo "Tổng của ba số là: $sum"
                exit 0
                ;;
            [Nn])
                echo "Đã thoát chương trình."
                exit 0
                ;;
            *)  echo "Lựa chọn không hợp lệ. Vui lòng chọn Y để tiếp tục hoặc N để thoát."
                ;;
        esac
    else
        num1=$1
        num2=$2
        num3=$3

        sum=$((num1 + num2 + num3))

        echo "Tổng của ba số là: $sum"
        exit 0
    fi
done