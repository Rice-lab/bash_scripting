#!/bin/bash

# A1: Write a script for printing all file related information in present 
# working directory (e.g.: size, permission & size etc…)
# SOLUTION:
# ls -l

# A2: Read n and generate the given pattern
# 1
# 1 2
# 1 2 3
# 1 2 3 4
# --> n is the number of rows and values in the output
# SOLUTION:
# echo "What would you like the value of n to be?"
# read N
# for i in $(seq 1 $N); do 
#     for j in $(seq 1 $i); do 
#         echo -n "$j "
#     done
#     echo
# done

# A3: Read n and generate the given pattern
# 1
# 2 3 
# 4 5 6
# 7 8 9 10
# --> n is just the number you have to reach before the pattern terminates
# SOLUTION:
echo "What would you like the value of n to be?"
read N
count=1
i=1
while [ $i -le $N ]; do
    j=1
    while [[ $j -le count && $i -le $N ]]; do 
        echo -n "$i "
        ((j++))
        ((i++))
    done
    echo
    ((count++))
done
