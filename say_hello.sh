# A21: Write a script called "say_hello" which will print greetings based on time
# “Good morning”    (5:00:00  – 11:59:59)
# “Good noon”       (12:00:00 – 13:59:59)
# “Good afternoon”  (14:00:00 – 16:59:59)
# “Good evening”    (17:00:00 – 20:59:59)
# “Good night”      (21:00:00 –  4:59:59)

# parsing
DATE_INFO=($(date))
TIME=${DATE_INFO[3]}
TIME_INFO=($( tr [=":"=] " " <<< $TIME))
HOUR=${TIME_INFO[0]}

# optimal parsing
# HOUR=$(date +%H)

# take advantage of unique hours 
if [[ $HOUR -ge 5 && $HOUR -le 11 ]]; then
    echo "Good morning"
elif [[ $HOUR -ge 12 && $HOUR -le 13 ]]; then
    echo "Good noon"
elif [[ $HOUR -ge 14 && $HOUR -le 16 ]]; then
    echo "Good afternoon"
elif [[ $HOUR -ge 17 && $HOUR -le 20 ]]; then
    echo "Good evening"
else 
    echo "Good night"
fi


