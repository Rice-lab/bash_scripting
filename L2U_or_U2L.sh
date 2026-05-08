# A22: Shell script to convert string lower to upper and upper to lower
echo "Provide filename you'd like to convert"
read FILENAME
echo "Type 1 for LOWER TO UPPER and 2 for UPPER TO LOWER"
read OPTION

case $OPTION in 
    1) 
        cat $FILENAME | tr [:lower:] [:upper:]
        ;;
    2) 
        cat $FILENAME | tr [:upper:] [:lower:]
        ;;
    *)
        echo "Invalid Option. Enter either 1 or 2"
        ;;
esac