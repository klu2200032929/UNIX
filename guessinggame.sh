files_array=($(ls -1| wc -l))
files_count=${#files_array[@]}
files_guess=0

function checkguess {
    if [[ $1 -lt $2 ]]
    then
    echo "echo Too low"
    elif [[ $1 -gt $2 ]]
    then
    echo "echo Too high"
    fi
}

while [ $files_guess -ne $files_count ]
do
echo "Guess the number of files in the current directory:"
read files_guess

$(checkguess $files_guess $files_count)

done
echo "You got it right!  Congratulations, well done!"