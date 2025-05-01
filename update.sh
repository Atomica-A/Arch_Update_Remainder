#!/usr/bin/env bash

# Load .env file
source /home/tam/scripts/.env

updates=$(checkupdates)

if [[ -n "$updates" ]]; then
  message="Updates available on $(hostname)."
  curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
       -d chat_id="${TELEGRAM_CHAT_ID}" \
       -d text="$message"
else
  echo "Your system is up to date."
fi

