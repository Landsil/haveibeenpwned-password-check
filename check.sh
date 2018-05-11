#!/bin/bash

#debug thing
#set -x
#exec 5> debug_output.txt
#BASH_XTRACEFD="5"
#PS4='$LINENO: '

answer=y
while [ "$answer" = y ]
do

# Ask user for password to check
unset password
prompt="Please type your password and press enter: "
while IFS= read -p "$prompt" -r -s -n 1 char
do
    if [[ $char == $'\0' ]]
    then
        break
    fi
    prompt='*'
    password+="$char"
done

#create SHA1 hash from password
passwordhash=$(echo -n $password | sha1sum | awk '{print $1}')

clear
echo "please wait...     (up to ~90s)"
start=$SECONDS
#Search database for hash and return line
if test=$(grep -i "$passwordhash" ./p.txt) ; then
     duration=$(( SECONDS - start ))
     result=$(sed -n -e 's/^.*://p'<<< $test)
     clear
     echo "Number of times you password appeared is ${result}"
     echo "You should probably change it"
     echo "Test time was ${duration} seconds"
     echo "Would you like to check another one? [y/n] ?"
     read answer
else
     duration=$(( SECONDS - start ))
     clear
     echo "Good News Everyone"
     echo "There is nothing in the database"
     echo "Test time was ${duration} seconds"
     echo "Would you like to check another one? [y/n] ?"
     read answer
fi

if [ "$answer" = yes ]
then "run script again"
fi

done

echo "Exiting Program"
exit 0
