#!/bin/bash

# FORMATTING - using variables for cleaner code
# RLY_LONG_MSG="trying this out"
# RLY_LONG_MSG_TWO="does this work?"

# echo $RLY_LONG_MSG $RLY_LONG_MSG_TWO

# TASK: Make a script to read the name of a user from the terminal
echo "First Name: "
read FIRST_NAME
echo "Last Name: " 
read LAST_NAME

echo Greetings $FIRST_NAME $LAST_NAME

# POSITIONAL ARGS - call in terminal by, for example, ./test.sh Hello World 
# echo $1 $2


