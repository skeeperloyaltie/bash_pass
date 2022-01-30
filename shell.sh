    # Write a script that takes as argument a wordlist consisting of one word per line and 
    # appends all possible combinations of n digits (n provided as second argument) 
    # to every word in the wordlist.
    # Write the output to a file called output.txt.
    # Check arguments and show usage message if wrong arguments.
    # The bash code is
   




#!/bin/bash 

# Check if arguments are correct
if [ $# -ne 2 ]
then
    echo "Usage: $0 <wordlist> <n>"
    exit 1
fi

# create an argument username and assign it to the first argument
wordlist=$1

# create an argument n and assign it to the second argument
n=$2

# create an argument output and assign it to the output.txt file
# take arguments consisting of one word per line

cat $1 | while read line
do
    for (( i=0; i<$2; i++ ))
    do
        echo -n "$line"
    done
    echo ""
done > output.txt

# Append code 
# cat $1 | while read line
# do
#     for (( i=0; i<$2; i++ ))
#     do
#         echo -n "$line"
#     done
#     echo ""
# done >> output.txt




# append all possible combinations of n digits to every word in the wordlist
for word in $(cat $1)
do
    for i in $(seq 1 $2)
    do
        echo -n "$word"
        for j in $(seq 1 $i)
        do
            echo -n "$j"
        done
        echo ""
    done
done > output.txt







