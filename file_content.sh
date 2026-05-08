# A20: Write a script to print content of files from the given number of lines
# assignment suggested to use the head and tail command

# head prints the first 10 lines by default if no range is specified 
# tail prints the last 10 by default

# tail -n +[NUM] [filename] --> prints lines starting from NUM until the end of the file 
# tail -n [NUM] [filename] --> prints the last NUM lines of the file
# head -n [NUM] [filename] --> prints the first NUM lines

echo "Enter the starting line number, "
echo "the number of lines you want to read,"
echo "and the name of the file you want to read from"
echo "e.g) 1 15 hello.txt"
read START_LINE NUM_LINES FILENAME

# -1 since we include start_line as a line to be read
END_LINE=$(( START_LINE+NUM_LINES-1 ))
# head prints all lines til END_LINE
# tail then takes those lines and extracts the user specified amount
head -n $END_LINE $FILENAME | tail -n $NUM_LINES

echo " ================================================ "

# ALTERNATIVE SOLUTION
tail -n +$START_LINE $FILENAME | head -n $NUM_LINES