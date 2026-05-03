# A5: Write a script for addition of two real numbers
echo "Enter numbers to add"
read FIRST SECOND
RESULT=$(echo "$FIRST + $SECOND" | bc)
echo "Answer is $RESULT"