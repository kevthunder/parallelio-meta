#!/bin/sh


OLD_DOMAIN="git@github.com"
NEW_DOMAIN="git@me.github.com"
NAME="Name"
EMAIL="me@gmail.com"

sed -i -e "s/$OLD_DOMAIN/$NEW_DOMAIN/g" ./.git/config
if grep -q "kev.giguere.l@gmail.com" ./.git/config
then
    echo "user allready setted"
else
    echo "
[user]
	name = $NAME
	email = $EMAIL" >> ./.git/config
fi
