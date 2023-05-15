#!/bin/bash

# Notificació de missatges del sistema per Telegram usant un bot.

TOKEN="6180835850:AAHGq84RbYrBR3TNI7tSIQd-m_8Z3CkP1nU"
ID="886784679"
MENSAJE=${1}
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE "