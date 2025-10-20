#!/bin/bash
read -p "Enter the message: " key
path=/home/kali/new.txt
new_path=/home/kali/en.hex


if [ -z "$key" ]; then
 echo "The key is empty...please check once"
 exit 1
fi

 echo "$key" > "$path"

if xxd -p "$path" > "$new_path"; then
 echo "processing..."
fi

 echo "Encryption is done & this is the secret code: "
 cat "$new_path"
