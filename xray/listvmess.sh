#!/bin/bash
clear
tarap=$(cat /etc/xray/vmess)
echo "$tarap"
echo""
echo""
read -rp "Masukan Name User : " user
list=$(cat /etc/xray/vmess/$user.log)
clear
echo "$list"
