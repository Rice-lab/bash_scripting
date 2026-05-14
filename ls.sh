# A26: Write a script that takes any number of directories as command line arguments and 
# then list the contents of each of these directories WITHOUT using the ls command
# If no arguments passed, list contents of current directory

if [ $# -eq 0 ]; then   
    D=$(pwd)
    for files in "$D"/*; do
        echo "$files"
    done
else
    for (( i=1; i<=$#; i++ )); do 
        LIST[$i]=${!i}
    done

    for items in "${LIST[@]}"; do 
        echo "Contents of $items are: "
        for files in "$items"/*; do
            echo "$files"
        done
        echo "<==========================================>"
    done
fi 

# optimal solution 
if [ $# -eq 0 ]; then
    set -- "$(pwd)"   # reuse the same logic below for current dir instead of duping logic
fi

for dir in "$@"; do   # gets rid of building the list array
    echo "Contents of $dir:"
    found=false       # initially false for each passed directory
    for file in "$dir"/* "$dir"/.*; do     # also accounts for hidden files (e.g. .bashrc files)
        # filter out . and ..
        [[ "$file" == "$dir/." || "$file" == "$dir/.." ]] && continue  # if either of the conditions inside the square brackets are true then skip to the next iteration
        [ -e "$file" ] && echo "  $file" && found=true  # if the file exists, print it and flip found to true
    done
    # || in this case means run the right side only if the left side is false 
    $found || echo "  (empty)"  # catches the empty directory case 
    echo "<==========================================>"
done