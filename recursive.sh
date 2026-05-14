# A28: Use a recursive function to print each argument passed to the function

#  *** Blueprint of a recursive function below *** 
# recursive_function() {
#     if [ "$1" -eq 0 ]; then
#         # Base case
#         echo "Done"
#     else
#         # Recursive case
#         echo "Value: $1"
#         recursive_function $(( $1 - 1 ))
#     fi
# }
# recursive_function 2

print_arg(){
    if [ $# -eq 1 ]; then
        echo "$1"
    else
        echo "$1"
        shift
        print_arg "$@"
    fi 
}
print_arg "$@"

# Without duplicated logic (echo $1)
# print_arg(){
#     if [ $# -eq 0 ]; then
#         return
#     else
#         echo "$1"
#         shift
#         print_arg "$@"
#     fi 
# }
# print_arg "$@"
