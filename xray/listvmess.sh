#!/bin/bash
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/config.json")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		clear
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo ""
	echo "List Name User Kamu"
	echo " Press CTRL+C to return"
	echo -e "==============================="
	grep -E "^### " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | nl -s ') '
	echo ""
	read -rp "Masukan Name User : " user
echo ""
echo ""
list=$(cat /etc/xray/vmess/$user.log)
clear
echo "$list"
