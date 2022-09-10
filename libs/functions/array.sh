<<'COMMENT'
注意事项
1. 入参：不能向函数传递一个数组，而应该是遍历的数组的值，所以不能写=(${echo ${myarray[*]}))，这样相当于arg1是一个数组了；而是`func ${myarray[*]}`返回的则是1 2 3 4单个的输出值；
2. 出参：函数的返回同理，返回的是单个的数值，接受的时候加上(),组成数组
3. 静态方法：采用Array_形式
4. 属性：采用 prop_ 形式
COMMENT

# =========静态方法=========
# function Array_form () {
#     echo ($#)
# }
# =========属性=========
function prop_length () {
    arr=$1
    echo ${#arr[@]}
}

# =========实例方法=========
# 打印所有元素
# @param arr 数组元素
# @return 所有数组元素
function toString () {
    arr=$1
    echo ${arr[@]}
}

# 追加元素
# @param arr 数组
# @param item 被追加的元素
# @return  改变后的数组
function push () {
    arr=$1
    item=$2
    arr=(${arr[@]} $item)
    echo $arr
}
# 通过下标索引删除一个元素
# @param arr 数组
# @param index 被删除元素的索引
# @return  改变后的数组
function deleteByIndex () {
    arr=$1
    index=$2
    unset $arr[$index]
    echo $arr
}
# 数组截取
# @param startIndex 起始索引
# @param endIndex 结束索引
# @return  变量名  变量含义
function slice () {
    arr=$1
    startIndex=$2
    endIndex=$3
    echo ${arr[@]:$startIndex:$endIndex}
}

# 数组循环 暂时没想好怎么封装
# for element in ${test[@]}
# do
# echo "This is $element..."
# done
