#!/bin/bash
#This game guesses when will you become a millionaire, by choosing random number from 0-15 and adding it to your age
echo "What is your name?"
read name
echo "How old are you?"
read age
echo "hello $name, you are $age years old."
sleep 2

echo "Calculating"
echo ".........."
sleep 1
echo "**........"
sleep 1
echo "****......"
sleep 1
echo "******...."
sleep 1
echo "********.."
sleep 1
echo "**********"
sleep 1

getrich=$((( $RANDOM % 15 ) + $age))

echo "$name, you will become a millionaire when you are $getrich years old"