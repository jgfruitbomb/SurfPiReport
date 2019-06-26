#!/bin/bash

curl https://magicseaweed.com/The-Cross-Pensacola-Beach-Surf-Report/955/ > surf.html


SIZE=$(grep -o -P "<li class=\"rating-text text-dark\">.{0,7}" surf.html | tail -c 4 | sed 's/<s//g')
DAY=$(date +"%m/%d")

echo -e "Today is $DAY"
echo "The surf is $SIZE ft my dude"

