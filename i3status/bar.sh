#!/bin/sh

i3status | while :
do
    read line
    luz=$(light)
    mails1=$(ls ~/Mail/laboral/INBOX/new/ | wc -l)
    mails2=$(ls ~/Mail/laboral/INBOX/cur/*, | wc -l)
    ventana=$(xprop -id $(xprop -root _NET_ACTIVE_WINDOW | cut -d ' ' -f 5) WM_NAME | sed -e 's/.*"\(.*\)".*/\1/';)
    echo -e "$mails1/$mails2  - $ventana  | ☀️: $luz | $line" || exit 1
done
