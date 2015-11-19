#!/bin/bash
function jacobi {
        result=`./$1 $kb | sed 's/.*MUPS //'`
	echo "$2 $result" >> $1_data.dat
	echo "$1 $2 $result"
}

START=1
STOP=$((128*1024))

y=`echo "e(l($STOP/$START)/64)" | bc -l`

for i in `seq 0 64`
do
	kb=`echo "$START*$y^$i" | bc -l | xargs printf "%d\n" 2> /dev/null`
	
	jacobi jacobi $kb 
	jacobi jacobi_sse $kb 
	jacobi jacobi_avx $kb 
	jacobi jacobi_d $kb 
	jacobi jacobi_sse_d $kb 
	jacobi jacobi_avx_d $kb 
done

