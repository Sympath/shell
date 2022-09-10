# for num in {1..9}; do
#     echo $num
# done

for num in {1..9}; do
    if [ $num -eq 5 ]; then
        break
    fi
    echo $num
done

for num in {1..9}; do
    if [ $num -eq 5 ]; then
        continue
    fi
    echo $num
done
