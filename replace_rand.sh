# A35: Write a script to replace 20% of the lines in a C file randomly and replace it with a pattern
# -> the replaced line will appear as such: /* LINE WAS REPLACED RANDOMLY */
 
# Extract the number of lines the C file has  
# wc counts newline characters and since the provided C file ends with a "}" the 
# line isn't counted and LOC becomes 1 less than desired!
#
# +1 is added to account for this, however this implementation should be changed 
# if this script is to be used for files that aren't .c
LOC=$(( $(wc -l < $1) + 1 ))

# Bash doesn't do floating point arithmetic (i.e can't do LOC*.2)
LINES_TO_RAND=$((LOC/5))

# Generate random numbers that correspond to the line number to replace
LINES=( $(shuf -i 1-$LOC -n $LINES_TO_RAND) )

# Only make one iteration write the changes to a seperate file ...
NEW_FILE="test_files/test_rand_REP_RAND.c"
sed "${LINES[1]}c\\/* LINE WAS REPLACED RANDOMLY *\/" $1 > "$NEW_FILE"

# ... then make the rest of the iterations make the changes inside the new file
for LINE_NUM in ${LINES[@]}; do 
    sed -i "${LINE_NUM}c\\/* LINE WAS REPLACED RANDOMLY *\/" "$NEW_FILE"
done

echo "Changes applied in new file: test_files/test_rand_REP_RAND.c"