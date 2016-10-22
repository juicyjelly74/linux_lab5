#!/bin/bash
function test {
	echo "$1" > /proc/first
	echo "$2" > /proc/operand
	echo "$3" > /proc/second
	res=`sudo cat /dev/result`
	if [ "$4" == "${res}" ]; then
		echo "$1$2$3=${res} OK"
	else
		echo "$1$2$3=${res} FAIL right=$4"
	fi
}

test 1 + 2 3
test 1 + 5 6
test -4 + 5 1
test 4 '*' 2 8
test -4 '*' -3 12
test 4 / 2 2
test 5 / 3 1
test 6 - 5 1
test 7 - -3 10
test 5 - 8 -3
