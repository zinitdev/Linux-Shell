#!/bin/bash

while true; do
    echo "CHƯƠNG TRÌNH BÉ LÀM TOÁN"
    echo "1- Bé làm toán cộng"
    echo "2- Bé làm toán trừ"
    echo "3- Bé làm toán nhân"
    echo "4- Bé làm toán chia"
    echo "0- Thoát chương trình"

    read -p "Chọn một số từ menu: " choice

    case "$choice" in
        1)
            echo "Nhập hai số để cộng:"
            read num1 num2
            result=$((num1 + num2))
            echo "Kết quả của $num1 + $num2 là: $result"
            ;;
        2)
            echo "Nhập hai số để trừ (số bị trừ trừ đi số trừ):"
            read num1 num2
            result=$((num1 - num2))
            echo "Kết quả của $num1 - $num2 là: $result"
            ;;
        3)
            echo "Nhập hai số để nhân:"
            read num1 num2
            result=$((num1 * num2))
            echo "Kết quả của $num1 * $num2 là: $result"
            ;;
        4)
            echo "Nhập hai số để chia (số bị chia chia cho số chia):"
            read num1 num2
            if [ "$num2" -eq 0 ]; then
                echo "Lỗi: Không thể chia cho 0."
            else
                result=$(bc <<< "scale=2; $num1 / $num2")
                echo "Kết quả của $num1 / $num2 là: $result"
            fi
            ;;
        0)
            echo "Đã thoát chương trình."
            exit 0
            ;;
        *)
            echo "Lựa chọn không hợp lệ. Vui lòng chọn lại."
            ;;
    esac
done