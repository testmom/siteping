#!/bin/bash

if [ $# -ne 1 ];then
   echo "Usage: push.sh [message_text]"
   exit 1
fi

timeout=5  
token="YOUR_TOKEN"
chatId="412875799"

curl --connect-timeout $timeout -G -s -o /dev/null "https://api.telegram.org/bot$token/sendMessage?" --data-urlencode "text=$1" --data-urlencode "chat_id=$chatId" || exit 1

exit 0
