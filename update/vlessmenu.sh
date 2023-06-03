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
echo -e "\033[1;93m│$NC\033[42m          MENU MANAGER VLESS              $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mCreating a Vless Account${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mDelete Vless Account${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mRenew Vless Account${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mCheck Vless login Account${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e ""
read -p "Select From Options [ 1 - 4 ] : " menu
case $menu in
1)
    addvless
    ;;
2)
    delvless
    ;;
3)
    renewvless
    ;;
4)
    cekvless
    ;;
*)
    menu
    ;;
esac
