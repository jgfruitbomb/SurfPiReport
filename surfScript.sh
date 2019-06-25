#!/bin/bash

curl https://magicseaweed.com/The-Cross-Pensacola-Beach-Surf-Report/955/ > surf.html


SIZE=$(grep -o -P "<li class=\"rating-text text-dark\">.{0,7}" surf.html | tail -c 4)
DAY=$(date +"%m/%d")
BIG=$(echo "$SIZE" | tail -c 2)

echo -e "Today is $DAY"
if [ $BIG -gt 2 ]
then
	echo -e "The surf is $SIZE ft my dude\n Might be a good time to hit the gnar"
else
	echo "The surf is $SIZE ft my dude"
fi

