# cacl_exe_time.sh

time コマンドで出力される実行時間の平均を計算するシェルスクリプト.

## 使い方
    usage: ./calc_exe_time.sh [count] [cmd]
count: 繰り返し回数  
cmd: 実行するコマンド

## 実行例
    $ ./calc_exe_time.sh 5 echo hello
    count: 5, cmd: echo hello
    hello
    hello
    hello
    hello
    hello
    --------------------
     5 times average
     real |  usr  |  sys
    0.002 | 0.000 | 0.002