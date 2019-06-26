#!/bin/bash

#This link is specifically for pensacola
curl https://magicseaweed.com/The-Cross-Pensacola-Beach-Surf-Report/955/ > surf.html


SIZE=$(grep -o -P "<li class=\"rating-text text-dark\">.{0,7}" surf.html | tail -c 4 | sed 's/<s//g')
DAY=$(date +"%m/%d")
PHONE={Insert Your Phone Number}

#The value for this variable can be found here https://www.cid.ninja
PROVIDER={Insert Your Service Provider Email}

if [ $SIZE == "fla" ]
then
	echo -e "Today is $DAY \nThe surf is 0 ft my dude" | mail -s "" $PHONE@$PROVIDER

else
	echo -e "Today is $DAY \nThe surf is $SIZE ft my dude" | mail -s "" $PHONE@$PROVIDER
fi


