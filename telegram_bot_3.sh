#!/bin/bash

IP=$(curl ifconfig.me)
DATA=$(date)
HOST=$(hostname)
MENSAJE="S'ha reiniciat ${HOST} a les ${DATA} ip: ${IP}"

"/home/hugo/Colegio/CursSriptBash/telegram_bot_3.sh "${MENSAJE}"
# Notificació de missatges del sistema per Telegram usant un bot.