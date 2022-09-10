1. shell 的 function 只能返回整数值，所以如果想接收字符串类型 echo+$()方式获取

```shell
get_str()
{
	echo "返回值"
}
echo `get_str` #写法一
echo $(get_str) #写法二
```
