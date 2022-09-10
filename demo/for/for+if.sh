for sc_name in /Users/wzyan/Documents/selfspace/kkb-down/demo/for/test-x/*.sh; do
    if [ -x $sc_name ]; then
        . $sc_name
    fi
    # if [ $UID = 501 ]; then
    #     echo " wzyan user "
    # fi
done

# for sc_name in /Users/wzyan/Documents/selfspace/kkb-down/demo/for/test-x/*.sh; do
#     echo $sc_name
# done
