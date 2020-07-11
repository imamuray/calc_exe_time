#!/bin/sh

if [ $# -le 1 ]; then
  echo "usage: $0 [count] [cmd]" 1>&2
  exit 1
fi

count=$1
shift
cmd=$@
echo "count: $count, cmd: $cmd"

# result ファイルに \time の結果を書き込んでいく
\time -f "%e,%U,%S" -o result $cmd
i=1
while [ $i -lt $count ]
do
  \time -f "%e,%U,%S" -o result -a $cmd
  i=`expr $i + 1`
done

echo "--------------------"
echo " $count times average"
echo " real |  usr  |  sys"
awk -F ',' '{real += $1; u += $2; s += $3} END {printf "%.3f | %.3f | %.3f\n",real/NR,u/NR,s/NR}' result
