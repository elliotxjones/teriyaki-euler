#! /bin/bash

declare -i m_sums=0
for i in {1..1000};
do
    if [ $(($i*3)) -gt 1000 ] && \
        [ $(($i*5)) -gt 1000 ]; then
        break
    fi
    if [ $(($i*3)) -lt 1000 ]; then
        m_sums+=$(($i*3))
    fi
    if [ $(($i*5)) -lt 1000 ] && \
        ! [ $(($i*5%3)) -eq 0 ]; then
        m_sums+=$(($i*5))
    fi
done
echo $m_sums

    
