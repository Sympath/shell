# 注意，使用数组方法时传递进去的数组一定要是${arr[*]}形式，因为函数不支持传递数组，所以我们要把数组的子元素全部传递进去，再在内部转换
cd $(dirname $0)
# 源文件的文件名
basename=`basename $0`
testShFile=${basename%.test*}.sh
source "../functions/${testShFile}"
# 以上是自动读取对应源文件的动作 ====== 
arr=(1 2 3)
toStringResult=`toString ${arr[*]}`
echo $toStringResult # 1 2 3

toLengthResult=`prop_length ${arr[*]}`
echo $toLengthResult # 3


