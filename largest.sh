# A7: Write a script to compare larger integers from n number of command line arguments
if [ $# -eq 0 ]; then
    echo "Error: no arguments passed"
else
    for ((i=1; i<=$#; i++)); do
        if [ $i = 1 ]; then
            largest=${!i}
        elif [ ${!i} -gt $largest ]; then 
            largest=${!i}
        else 
            continue
        fi    
    done
fi 
echo "Largest value is $largest"

