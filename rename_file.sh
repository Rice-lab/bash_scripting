# A19: Given an album name and directory, create a script to name files properly by inserting index numbers
# Real-World Example: You come back from vacation and dump a bunch of photos into a folder 
# on your computer and you want to organize the album by naming them with the same prefix

# BEFORE: 1298144_hello.jpg, test.jpg, testing.if.this.works.jpg
# AFTER (chosen prefix is vacation): vacation001.jpg, vacation002.jpg, vacation003.jpg
# testing files are in test_rename_file

echo "Provide the new prefix and the path to the folder that contains the files you want to rename."
read PREFIX FOLDER
COUNT=1

# for FILE in $( ls $FOLDER ); do --> bad, breaks in filenames with spaces
for FILE in "$FOLDER"/*; do  
    LIST=( $(tr [='.'=] ' ' <<< "$FILE") )
    # %03d is to ensure count is always formatted to 3 digits regardless of how large count gets
    mv "$FILE" "$FOLDER/${PREFIX}$(printf '%03d' $COUNT).${LIST[-1]}"
    (( COUNT++ ))
done

echo "Prefix changed!"
    

