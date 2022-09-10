# function关键词可以省略
function checkpid() {
    local i
    for i in $*; do
        # linux中，每个在运行的进程都会有一个在/proc目录下对应的子目录，目录名为pid，这也是ps
        [ -d "/proc/$i" ] && return 0
    done
}
checkpid 5380
echo $?
