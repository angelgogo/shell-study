#!/bin/bash
#本脚本主要内容是用来测试自定义颜色输出文本

red="\033[1;31m"
blue="\033[1;34m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[1;35m"
origin="\033[0m"
declare -i num=2
#echo -e "$red hello-world$origin"

usage(){
    echo "usage: $0 text {red|bule|green|yellow|purple}"
}

color_output(){
    if [ $# -ne $num ]; then
    usage
    else
        case $2 in
            red) echo -e "$red$1$origin"
            ;;
            blue) echo -e "$blue$1$origin"
            ;;
            yellow) echo -e "$yellow$1$origin"
            ;;
            purple) echo -e "$purple$1$origin"
            ;;
            *) usage
            ;;
        esac
    fi
}

main(){
    color_output $@
}

main $@