# A9: Write a script to delete empty lines from a file
# ^$ is a regular expression that matches lines with nothing between start and end 
sed '/^$/d' $1

# 1) If you want to directly edit the file 
sed -i '/^$/d' $1

# 2) If you want to save a separate copy with the changes
sed '/^$/d' $1 > del_empty_line_NEL.txt