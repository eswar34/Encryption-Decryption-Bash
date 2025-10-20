##!/bin/bash
read -p "Start decrypt the secret code [yes/No]: " start
new_path=~/en.txt
old_path=~/en.hex


if [ -z "$start" ]; then
 echo "Your response is empty.."
 exit 1
fi

echo "Decryption is Starting.."

if [ "$start" = "yes" ]; then 
 xxd -p -r "$old_path" > "$new_path"
 echo "processing..."
else
 echo "Thanks for response.."
 exit 1
fi

echo "Decryption is done & this is the message: "
cat "$new_path"
