#!/bin/bash

IP=$(curl ifconfig.me)
DATA=$(date)
HOST=$(hostname)
MENSAJE="S'ha reiniciat ${HOST} a les ${DATA} ip: ${IP}"

/home/estudiant/GitHub/CursSriptBash/telegram_bot_2.sh "${MENSAJE}"
# Notificació de missatges del sistema per Telegram usant un bot.