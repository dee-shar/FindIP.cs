#!/bin/bash

api="https://api.findip.net"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"

function set_api_key() {
	# 1 - api_key: (string): <api_key>
	api_key=$1
}

function get_ip_info() {
	# 1 - ip_address: (string): <ip_address>
	curl --request GET \
		--url "$api/$1/?token=$api_key" \
		--user-agent "$user_agent"
}
