#!/bin/bash

#Simple Password Generator#

echo "### Welcome to Password Generator based on OpenSSL ###"
echo " "
read -p "Please specify a length (Only numeric value): " LENGTH
read -p "Please indicate how many passwords are needed: " SEQ
echo "Please select your encoding, based64 (Special character) and Hex"
echo " "

choice="Base64 Hex"
select option in $choice; do
if [ $REPLY = 1 ];
then
TYPE="base64"
echo "Passwords with encode Base64"
else
TYPE="hex"
echo "Passwords with encode Hex"
fi
for P in $(seq 1 $SEQ);
do
openssl rand -$TYPE 48 | cut -c1-$LENGTH
done
done
