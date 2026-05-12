# A24: Write a script to delete all .swp files in found in the system or directory 
# If command-line directories are passed delete only from that directory
# If no arguments passed delete from entire ~/ directory
# If no .swp file present show a message.

# Testing: one main test file directory that contains two nested directories
# - One that's empty and one that has a .c file (which should be retained) and a .swp file 

# Directory handling
if [ $# -eq 0 ]; then
    LIST=($(find . -name "*.swp"))
else 
    LIST=($(find $1 -name "*.swp"))
fi 

# File handling
if [ ${#LIST[@]} -eq 0 ]; then
    echo "No .swp files in this directory"
else
    for items in "${LIST[@]}"; do 
        rm "$items"
        echo "Deleted $items"
    done
fi