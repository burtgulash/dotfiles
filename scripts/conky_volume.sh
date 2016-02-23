amixer get Master -M | awk -F '[][%]' '/%/ {print $5 " " $2 "%"}' | head -n1
