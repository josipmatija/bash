#!/bin/bash

echo "You died."

#Game rules: If you type the same number as beast randomly rolled, then you win.
#1st fight is 50% chance, then boss fight is 10% chance. However, root user always wins boss fight
#there is also a cheat code "cheatcode" to win both battles

#"$RANDOM % 2" gives us a random number 0 or 1.

beast=$(( $RANDOM % 2 ))

echo "Your first beast approaches. Prepare to battle. Pick a number between 0 and 1. (Enter 0 or 1)"

read tarnished

if [[ $beast == $tarnished || $tarnished == "cheatcode"  ]]; then
	echo "Beast VANQUISHED!! Congrats fellow tarnished."
else
	echo "You Died."
	exit 1
fi

sleep 2

echo "Boss battle. Get scared. It's Margit. Pick a number between 0 and 9. (Enter number between 0-9)"

read tarnished

beast=$(( $RANDOM % 10 ))

if [[ $beast == $tarnished || $tarnished == "cheatcode" ]]; then
	echo "Boss Margit VANQUISHED!!"
elif [[ $USER == "root" ]]; then
	echo "ROOT always wins. Boss Margit VANQUISHED!!!"
else
	echo "You Died."
fi
