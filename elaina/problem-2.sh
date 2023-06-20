#! /bin/bash

declare -i fib_sums=0
declare -i last=1
declare -i next=1
declare -i i=1
while [ $i -lt 4000000 ];
do
    if [ $(($i%2)) == 0 ]; then
        fib_sums+=$i
    fi
    next=$(($i+$last))
    last=$i
    i=$next
done
echo $fib_sums
