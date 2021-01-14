#!/bin/sh

function guessinggame {
echo "Enter number of file from directory"
read num
fnumber=$(ls -1 | wc -l)
}
guessinggame
while [[ $num>0 ]]
do 
if [[ $num -gt $fnumber ]]
then 
echo "Your guess is not correct"
elif [[ $num -lt $fnumber ]]
then 
echo "Your guess is not correct"
else
echo "Congratulations !!! You are right "
exit 0
fi
guessinggame
done
