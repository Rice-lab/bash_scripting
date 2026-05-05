# A13: Write a script to print a chess board
# echo -n $'\e[40m \e[0m' #black
# echo $'\e[47m \e[0m' #white 

# own solution
cycle=0
for (( i=1; i<=8; i++ )); do
    # if cycle is 0 then black appears on even indices
    if [ $cycle -eq 0 ]; then 
        for (( j=1; j<=8; j++ )); do
            # even (black)
            if (( (j+1) % 2 == 1 )); then
                echo -n $'\e[40m \e[0m'
            # odd (white)
            elif (( (j+1) % 2 == 0 )); then
                echo -n $'\e[47m \e[0m'
            else 
                echo "Unknown error"
            fi
        done
        echo
        cycle=1
    # if cycle is 1 then black appears on odd indices
    else   
        for (( j=1; j<=8; j++ )); do
            # even (white)
            if (( (j+1) % 2 == 1 )); then
                echo -n $'\e[47m \e[0m'
            # odd (black)
            elif (( (j+1) % 2 == 0 )); then
                echo -n $'\e[40m \e[0m'
            else 
                echo "Unknown error"
            fi
        done
        cycle=0
        echo
    fi 
done

echo

# optimal
for (( i=1; i<=8; i++ )); do
    for (( j=1; j<=8; j++ )); do
        # white
        if (( (i+j) % 2 == 0 )); then
            echo -n $'\e[47m \e[0m'
        # black
        else
            echo -n $'\e[40m \e[0m'
        fi
    done
    echo
done