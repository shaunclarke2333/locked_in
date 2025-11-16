#!/bin/bash

echo "all params: $*"
echo "Setting up and configuring server directory"

file_name=$1
directory_name=$2

if [ -d $directory_name ]
then
    echo "reading $directory_name"
    config_files=$(ls $directory_name)
else
    echo "Directory $directory_name not found creating dir"
    echo
    mkdir $directory_name
    echo "This is a config file" > $directory_name/$file_name
    echo "Displaying $directory_name contents"
    ls "$directory_name"
    cat $directory_name/$file_name
    echo "please enter a password to contine"
    read -p "Enter password here: " user_pwd
    echo "You entered"
    echo $user_pwd
fi

echo "using file $file_name"
echo "These are config filesd $config_files"

for param in $*
    do 
        echo "Parsing params list"
        echo $param
    done

echo "**********************************"



    function score_card {
        sum=0
        while true
            echo "You score so far is: $sum"
            do
                if [ $sum -ge 10 ]
                then
                    echo "breaking loop"
                    break
                fi

                read -p "enter a score" score
            sum=$(($sum+$score))
                
                
            done
    }

    score_card

    function create_file() {
        file_name=$1
        touch $file_name
    }

    create_file test_file.txt


function sum_num() {
    total_sum=$(($1+$2))
    return $total_sum
}

sum_num 5 7
result=$?

echo $result

