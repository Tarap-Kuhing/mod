#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	Tarap-Kuhing
# //	Dscription: Xray Menu Management
# //	email: merahjambo@gmail.com
# //  telegram: https://t.me/Baung2012
# //====================================================
# // font color configuration | T A R A P  K U H I N G AUTOSCRIPT
clear
grenbo="\e[92;1m"
NC='\033[0m'
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m          MENU MANAGER VMESS              $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mCreating a Vmess Account${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mDelete Vmess Account${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mRenew Vmess Account${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mCheck Vmess login Account${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e ""
read -p "Select From Options [ 1 - 4 ] : " menu
case $menu in
1)
    addvmess
    ;;
2)
    delvmess
    ;;
3)
    renewvmess
    ;;
4)
    cekvmess
    ;;
*)
    menu
    ;;
esac
