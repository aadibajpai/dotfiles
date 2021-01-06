function confess
	curl --silent --location --request POST $CONFESS_URL --header 'Content-Type: application/x-www-form-urlencoded' --data-urlencode "text=$argv" --data-urlencode 'response_type=in_channel' | jq .text
end
