#!/usr/bin/env bash
count=0
until [[ "$?" -ne 0 ]]; do
    count=$((count+1))
    ./random.sh > out.txt 2> err.txt
done
echo "Failed after $count runs"
echo "STDOUT:"
cat out.txt
echo "STDERR:"
cat err.txt
