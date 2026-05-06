# A33: For each directory in the $PATH, display the number of executable files in that directory

# 1) parse directories from $PATH, seperated by ":"
DIRECTORY_LIST=($(echo $PATH | tr [=':'=] ' '))
TOTAL=0

# 2) for each directory in the path:
#   - check that the path exists
#   - check if they have executable permission
#   - print the directory and the number of executable files they have
for DIRECTORY in ${DIRECTORY_LIST[@]}; do 
    # verify the directory path exists
    if [ ! -d "$DIRECTORY" ]; then       
        echo "$DIRECTORY does not exist, skipping"
        continue
    fi
    COUNT=0
    for EXEC in $(ls $DIRECTORY); do
        # checking executable permissions
        if [ -x "$DIRECTORY/$EXEC" ]; then
            ((COUNT++))
            ((TOTAL++))
        else
            continue
        fi
    done    
    echo "$DIRECTORY has $COUNT executable files"
done

# 3) print the total number of executable files 
echo "<<<Total number of executable files in PATH is $TOTAL>>>"
