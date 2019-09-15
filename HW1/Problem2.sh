echo -n "Enter a positive whole number: "
read answer

regex='^[0-9]+$'
if ! [[ $answer =~ $regex ]] ; then
   echo "Error: Input was not a positive whole number" >&2; exit 1
fi

if [ ! -d "./first" ] ; then
    mkdir "first"
    echo "Directory \"first\" created."
fi

if [ ! -d "./second" ] ; then
    mkdir "second"
    echo "Directory \"second\" created."
fi

let orig=$answer

until [  $answer -eq 0 ]; do
    echo "Making file${answer}.text"
    if [ $answer -le $(($orig/2)) ] ; then
        touch "./first/file${answer}.text"
    else
        touch "./second/file${answer}.text"
    fi
    let answer-=1
done

echo "Done."