#!/bin/bash
START=1
STOP=$((128*1024))

y=`echo "e^(l($STOP/$START)/64)" | bc -l`

for i in `seq 0 64`
do
	kb=`echo "$START*$y^$i" | bc -l | xargs printf "%d\n"`
	echo $kb
	echo $y
done
