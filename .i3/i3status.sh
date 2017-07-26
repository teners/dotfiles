#!/bin/zsh
i3status --config ~/.i3status.conf | while; do
    read line
    #layout="$(getkbdlayout)"
    layout="[{ \"full_text\": \"$(getkbdlayout)\" },"
    #echo "$layout | $line" || exit 1
    echo "${line/\[/$layout}" || exit 1

done
