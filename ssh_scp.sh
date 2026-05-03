# A4: Write a script for scp by demonstrating remote login and file transfer functions
echo "1 - ssh"
echo "2 - scp"
echo "Select an option to continue"
read OPTION
case $OPTION in 
    1)
        echo "Please enter remote system ip address"
        read REMOTE_IP
        echo "Please enter user name"
        read USERNAME
        ssh "$USERNAME@$REMOTE_IP"
        ;;
    2)
        echo "Please enter remote system ip address"
        read REMOTE_IP
        echo "Please enter user name"
        read USERNAME

        echo "1 - local -> remote"
        echo "2 - remote -> local"
        echo "Please choose an option."
        read OPTION_SCP
        
        case $OPTION_SCP in
            1) 
                echo "Please enter source file location."
                read SOURCE_FILE
                echo "Please enter destination file location."
                read DEST_FILE
                scp $SOURCE_FILE "$USERNAME@$REMOTE_IP:$DEST_FILE"
                ;;
            2) 
                echo "Please enter source file location."
                read SOURCE_FILE
                echo "Please enter destination file location."
                read DEST_FILE
                scp "$USERNAME@$REMOTE_IP:$SOURCE_FILE" $DEST_FILE
                ;;
            *)
                echo "Invalid Option: Choose 1 or 2."
                ;;
        esac
        ;;
    *)
        echo "Invalid Option: Choose 1 or 2."
        ;;
esac
