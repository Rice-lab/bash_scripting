# A29: Write a script to check if a given file system or mount point is mounted
# If mounted then show where it is mounted and the free space available in it 
# Else print an error message 

# If no args are passed then print a message that shows the user how to use the script
if [ $# -eq 0 ]; then echo "Usage $0: <filesystem>"; exit 1; fi 

# Checks if the given file system is mounted or not
MOUNTED=$(df -h | grep -w "$1" | awk '{print $1, $6}')
if [[ $MOUNTED && "$1" != "Filesystem" ]]; then
    echo "FS, Avail., Mounted on"
    df -h | grep "$1" | awk '{print $1, $4, $6}'
else
    echo "Given file system is not mounted."
fi