#!/bin/bash
function vec {
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
	
	vec vecsum_u1 $kb 
	vec vecsum_u2 $kb 
	vec vecsum_u3 $kb 
	vec vecsum_u4 $kb 
	vec vecsum_u8 $kb 
	vec vecsum_u1_uc $kb 
	vec vecsum_u2_uc $kb 
	vec vecsum_u3_uc $kb 
	vec vecsum_u4_uc $kb 
	vec vecsum_u8_uc $kb 
done

