i3status --config ~/.i3status.conf | while :
do
    read LN 
    LO=$(xset -q | grep LED | awk '{print $10}' | cut -c 5)
    if [ $LO == "0" ]
    # some kinda magic here, never mind
    then
        LG="[{ \"full_text\": \"EN\" }," 
    else
        LG="[{ \"full_text\": \"RU\" }," 
    fi
    echo "${LN/[/$LG}" || exit 1 
done
