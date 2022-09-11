myFunction() {
    param1=("${!1}")
    echo ${param1[@]}    
    param2=("${!2}")
    echo ${param2[@]}
}

a=(foo bar baz)
b=(foo bar qux)
myFunction a[@] b[@]
