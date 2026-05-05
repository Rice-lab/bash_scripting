# A12: Write a script to print the length of every string using arrays
for (( i=1; i<=$#; i++ )); do 
    LIST[$i]=${!i}
done

for item in ${LIST[@]}; do 
    echo -n "Length of string ($item) - "
    # use -n flag on this echo otherwise newline character
    # is included in length 
    echo -n $item | wc -c 
done