# Arch_Update_Remainder

This script checks for available system updates and sends a Telegram alert if updates are found.
Features:

Checks for Arch Linux updates using checkupdates, Sends a Telegram message with hostname if updates are available, Uses .env file for bot credentials.

Requirements:

Arch Linux, checkupdates (from pacman-contrib), curl

    .env file with:
       TELEGRAM_BOT_TOKEN=your_bot_token
       TELEGRAM_CHAT_ID=your_chat_id
