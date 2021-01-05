function shorten --description 'VandyHacks URL shortener service' --argument NAME URL
    curl --location -X POST "https://vhl.ink" \
        -H "x-preshared-key: $SHORTEN_PSK" \
        -H "Content-Type: application/x-www-form-urlencoded" \
        --data-urlencode "url=$URL" \
        --data-urlencode "path=$NAME"
end
