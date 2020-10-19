#!/bin/bash
errorText=""
echo "First number: "
read a
echo "Second number: "
read b

if !(echo "$a" | grep -E -q "^-?[0-9]+$"); then
    errorText=${errorText}"First number is not integer; "
fi
if !(echo "$b" | grep -E -q "^-?[0-9]+$"); then
    errorText=${errorText}"Second number is not integer; "
fi
if [ "$errorText" != "" ]
then
    echo $errorText
else
    let "c = a + b"
    echo "Sum: "$c
fi