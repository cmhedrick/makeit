#!/bin/bash

program=$2

usage()
{
cat << EOF
usage: $0 options
OPTIONS:
   -g      Runs gcc. If the source does not contain "_start"
   -l      Runs ld. If the source contains "_start"
EOF
}

as -o $program.o $program.s

while getopts ":g:l" opt; do
  case $opt in
    g)
      gcc -o $program $program.o >&2
      ;;
    l)
      ld -o $program $program.o >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      usage
      ;;
  esac
done
