#!/bin/sh

blue="#7AA6DA"
green="#35BF5C"
black="#000000"
white="#FFFFFF"
background="#1D1F21"
header=""
prompt="> "

[ -p /dev/stdin ] && inputPipe=$(cat -) || inputPipe=$(ls)

usage() { printf "Usage: $0 [options]\nOptions\n \
  -h\tdisplay this help and exit.\n \
  -v\tdisplay version.\n \
  -r\tlist executables, like dmenu_run.\n \
  -p\tdefines the prompt text to be displayed.\n \
  -t\tdefines the header to be displayed\n" 1>&2; exit 1; }

while getopts ":vhrt:p:" o; do
    case "${o}" in
        v)  printf "fzfmenu v1.0\n";exit 0  ;;
        r)  inputPipe=$(printf $PATH | tr : '\0' | xargs -0 -n 1 ls)   ;;
        t)  header=${OPTARG}    ;;
        p)  prompt="${OPTARG} " ;;
        h | *)  usage;exit0   ;;
    esac
done

export inputPipe

export fzfcommand="fzf -i -e -m --reverse --cycle --info=inline --print-query --header='$header' --prompt='$prompt' \
  --color='border:$blue,prompt:$green,pointer:$blue,marker:$green:bold,gutter:$background' \
  --color='fg+:$green,info:$blue,bg+:$background,hl:$blue,hl+:$blue' \
  --margin 5%"

export outputPipe="/tmp/fzfmenu"
trap 'rm -f $outputPipe' EXIT
[ -p "$outputPipe" ] || mkfifo "$outputPipe"

output=$(cat "$outputPipe") && [ $(echo "$output" | wc -l) -eq 1 ] && printf "$output\n" || printf "$output\n" | tail -n +2 &
alacritty --class=launcher -e dash -c 'output=$(echo "$inputPipe" | eval "$fzfcommand"); echo "$output" >"$outputPipe"' 2>/dev/null 
