# A25: Write a script for generating random 8-character passwords including alphanumeric characters
# Password must contain alphanumeric and special characters

# delete every character that isnt in the provided set
cat /dev/urandom | tr -dc 'A-Za-z0-9!@#$%^&*()_+=-' | head -c 8
echo 