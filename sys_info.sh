# A15: Write a script to print system information
echo "1. Currently logged users"
echo "2. Your shell directory"
echo "3. Home directory"
echo "4. OS name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. CPU information"
echo "10. Memory information"
echo "11. File system information"
echo "12. Currently running process"
read OPT
case $OPT in 
    1) 
        users
        ;;
    2) 
        echo $SHELL
        ;;
    3) 
        echo $HOME
        ;;
    4) 
        cat /etc/os-release
        ;;
    5) 
        pwd
        ;;
    6) 
        who | wc -l
        ;;
    7) 
        cat /etc/shells 
        ;;
    8) 
        lsblk
        ;;
    9) 
        lscpu
        ;;
    10) 
        free -h
        ;;
    11) 
        df -h
        ;;
    12) 
        ps aux
        ;;
    *)
        echo "Invalid Option. Pick a number from 1-12."
        ;;
esac