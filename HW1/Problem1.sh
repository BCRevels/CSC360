echo -n "Enter a positive whole number: "
read answer

regex='^[0-9]+$'
if ! [[ $answer =~ $regex ]] ; then
   echo "Error: Input was not a positive whole number" >&2; exit 1
fi

until [  $answer -eq 0 ]; do
    echo "Making file${answer}.text"
    touch "file${answer}.text"
    let answer-=1
done

echo "Done."