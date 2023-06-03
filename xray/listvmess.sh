#!/bin/bash
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/vmes-tls.json")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		clear
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo ""
	echo "Select the existing name client you want to list"
	echo " Press CTRL+C to return"
	echo -e "==============================="
	grep -E "^### " "/etc/xray/vmess-tls.json" | cut -d ' ' -f 2-3 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " user
		fi
	done
#tarap=$(cat /etc/xray/vmess)
#echo "$tarap"
#echo""
#echo""
#read -rp "Masukan Name User : " user
list=$(cat /etc/xray/vmess/$user.log)
clear
echo "$list"
