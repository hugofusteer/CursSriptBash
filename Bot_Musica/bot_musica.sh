#!/bin/bash

#Bot para descargar música en MP3
#https://www.youtube.com/watch?v=ZjpLQRfDzWM

URL1=${1}
FORMAT="%(title)s"
TITLE=$(yt-dlp --print "${FORMAT}" ${URL1})
TITLE=$(echo ${TITLE} | sed -e 's/\s\+/-/g' -e 's/[áà]/a/g' -e 's/[éè]/e/g' -e 's/[íì]/i/g' -e 's/[óò]/o/g' -e 's/[úù]/u/g'  | tr -d -c '[^0-9A-Za-z-_]')

ARXIU="${TITLE}.mp3"

yt-dlp --format m4a -o "${ARXIU}" ${URL1}

TOKEN="6294291371:AAF61ngBgHRMY7NDJpz-ZWafSGCF3Pxq630"
ID="886784679"
MENSAJE="Aquí tienes tu archivo en MP3 {$ARXIU}"
URL="https://api.telegram.org/bot$TOKEN/sendDocument"

echo "enviant a telegram ${URL} ${ARXIU}"
curl -X POST "$URL" -F chat_id="$ID" -F document="@./${ARXIU}"
rm "$ARXIU"
