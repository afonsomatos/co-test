#!/bin/bash
(make clean && make) > /dev/null
byacc -dv minor.y 2>&1 | grep "conflict"

if [ $? -eq 0 ]; then
	echo "byacc has conflicts, please fix them"
else
	echo "no byacc conflicts, well done"
fi

echo " ===== PASS TESTS ===== "

for f in test/pass/*.min; do
	./minor < $f
	if [ $? -ne 0 ]; then
		echo "FAILED " $f
	else
		echo "PASSED" $f
	fi
done

echo " ===== FAIL TESTS ===== "

for f in test/fail/*.min; do
	./minor < $f 2>/dev/null
	if [ $? -ne 0 ]; then
		echo "PASSED" $f
	else
		echo "FAILED" $f
	fi
done