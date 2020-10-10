function confess --description just VandyHacks stuff lol
	curl --silent --location --request POST 'https://SECRET-URL' --header 'Content-Type: application/x-www-form-urlencoded' --data-urlencode "text=$argv" --data-urlencode 'response_type=in_channel' | jq .text
end
