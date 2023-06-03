#!/bin/bash
clear
read -rp "Masukan Name User : " user
list=$(cat /etc/xray/$user.log)
clear
echo "$list"