#!/bin/bash

function pause {
    printf "\x1b[32;40mPress \x1b[0;39;40;5m[ENTER]\x1b[0;32;40m to continue...\x1b[0m"
    read
}
function seperator {
    printf "\x1b[96;40m-------------------------------------------------------------------------------------------------------------------\x1b[0m\n"
}
mkdir "Problem4"

# Problem 1
grep -P "Male" "data.text" --color=always 

echo " "
echo "End Problem 1"
pause
seperator

# Problem 2
grep -P "(?<=\d,)[AK]" "data.text" --color=always 

echo " "
echo "End Problem 2"
pause
seperator

# Problem 3
grep -Po "(\d{3}-){2}\d{4}" "data.text" 

echo " "
echo "End Problem 3"
pause
seperator

# Problem 4
filenames=("id" "firstname" "lastname" "email" "gender" "ip_address" "phone")
for i in {0..6}
do
    cut -d "," -f $(($i + 1)) "data.text" > "./Problem4/${filenames[$i]}.txt"
    echo "Made ${filenames[$i]}.txt"
done
echo " "
echo "End Problem 4"
pause
seperator

# Problem 5
echo "$(grep "" -c data.text) - 1" | bc 

echo " "
echo "Command Used: echo \"\$(grep \"\" -c data.text) - 1\" | bc"
echo "End Problem 5"
pause
seperator

# Problem 6
sed "s/\.com/\.org/" data.text 
echo " "
echo "Command Used:"
echo "sed \"s/\.com/\.org/\" data.text"
echo "End Problem 6"
pause
seperator

perl -pe "s/([A-Z])(?=[a-z]+,[A-Z])/(\1)/g" data.text | perl -pe "s/([A-Z])(?=[a-z]+,[a-z])/(\1)/g" 
echo " "
echo "Command Used:"
echo "perl -pe \"s/([A-Z])(?=[a-z]+,[A-Z])/(\1)/g\" data.text | perl -pe \"s/([A-Z])(?=[a-z]+,[a-z])/(\1)/g\""
echo "End Problem 7"
pause
seperator

echo -n "Enter the line number you want to be deleted: "
read lnum
cat -n data.text | sed -e "$lnum d" 
echo " "
echo "Command Used:"
echo "cat -n data.text | sed -e \"\$lnum d\""
echo "End Problem 8"
pause
seperator

cat -n data.text 
echo " "
echo "Command Used:"
echo "cat -n data.text"
echo "End Problem 9"
pause
echo " "
echo "Done."