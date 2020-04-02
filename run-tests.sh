#!/bin/bash
testDir="$(dirname "$0")"		# Test directory
srcDir=$1						# Compiler make-file directory
exe="minor"

# Go to source directory and make compiler
cd $srcDir
srcDir=$(pwd)
(make clean && make) 2>&1 | grep "conflict"

# Check conflicts
if [ $? -eq 0 ]; then
	echo "byacc has conflicts, please fix them"
else
	echo "no byacc conflicts, well done"
fi

# Check the compiler itself
if [ ! -f $exe ]; then
    echo "$exe was not found - aborting"
	exit
fi

# Go back to test dir
cd - > /dev/null
cd $testDir

# These tests should pass
echo " ===== PASS TESTS ===== "
for f in $(find test/pass -name "*.min"); do
	"$srcDir/$exe" < $f &> /dev/null
	if [ $? -ne 0 ]; then
		echo FAILED $f
	else
		echo PASSED $f
	fi
done

# These tests should fail
echo " ===== FAIL TESTS ===== "
for f in $(find test/fail -name "*.min"); do
	"$srcDir/$exe" < $f &>/dev/null
	if [ $? -ne 0 ]; then
		echo PASSED $f
	else
		echo FAILED $f
	fi
done

# Clean source directory
cd $srcDir
make clean > /dev/null