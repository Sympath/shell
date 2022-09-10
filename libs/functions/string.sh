<<'COMMENT'
判断字符串1是否包含字符串2 includes abc a
@param fString  字符串1
@param sonString  字符串2
@return 0 | 1
COMMENT
function includes () {
    fString=$1
    sonString=$2
    echo "$fString $sonString"

    return [[ $fString =~ $sonString ]]
}

function split () {
    # $IFS变量是LINUX系统默认变量，代表空格，制表符，换行符
    # 先存储默认的$IFS变量
    BAK_IFS=$IFS
    # 需要处理的字符串
    str=$1
    #设置分隔符
    IFS=$2
    #自动根据分隔符进行分割
    FILE_LIST=($str)
    #恢复原来的分隔符
    IFS=$BAK_IFS
    echo ${FILE_LIST[@]}
}
