#!/bin/bash
# My Telegram : https://t.me/Akbar218
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
TIMES="10"
CHATID="847645599"
KEY="6220473435:AAFMXN_nqeaZc2Q0N5-Dh8s4E1rHYm7Ry1Q"
URL="https://api.telegram.org/bot$KEY/sendMessage"
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
mkdir -p /etc/xray/vmess
touch /etc/xray/vmess
clear
domain=$(cat /etc/xray/domain)
tls="$(cat ~/log-install.txt | grep -w "Vmess TLS" | cut -d: -f2|sed 's/ //g')"
nontls="$(cat ~/log-install.txt | grep -w "Vmess None TLS" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
		read -rp "Username : " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
			echo ""
			echo -e "Username ${RED}${CLIENT_NAME}${NC} Already On VPS Please Choose Another"
			exit 1
		fi
	done
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (Days) : " masaaktif
hariini=`date -d "0 days" +"%Y-%m-%d"`
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#xray-vmess-tls$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'"' /etc/xray/config.json
sed -i '/#xray-vmess-nontls$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'"' /etc/xray/config.json
cat>/etc/xray/vmess-tls.json<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "${tls}",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "",
      "tls": "tls"
}
EOF
cat>/etc/xray/vmess-$user-nontls.json<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "${nontls}",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "",
      "tls": "none"
}
EOF
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
vmess_base642=$( base64 -w 0 <<< $vmess_json2)
xrayv2ray1="vmess://$(base64 -w 0 /etc/xray/vmess-tls.json)"
xrayv2ray2="vmess://$(base64 -w 0 /etc/xray/vmess-$user-nontls.json)"
TEXT="
<code>───────────────────────────</code>
<code>    Xray/Vmess Account</code>
<code>    Xray/Vmess ${user}</code>
<code>───────────────────────────</code>
<code>Remarks      : ${user}</code>
<code>Domain       : ${domain}</code>
<code>Port TLS     : 8443</code>
<code>Port NTLS    : 80</code>
<code>User ID      : ${uuid}</code>
<code>AlterId      : 0</code>
<code>Security     : auto</code>
<code>Network      : WS</code>
<code>Path TLS     : (/vmess)</code>
<code>Path NLS     : (/vmess)</code>
<code>───────────────────────────</code>
<code>Link TLS     :</code> 
<code>${xrayv2ray1}</code>
<code>───────────────────────────</code>
<code>Link NTLS    :</code> 
<code>${xrayv2ray2}</code>
<code>───────────────────────────</code>
<code>Expired On : $hariini</code>
<code>Expired On : $exp</code>"
#rm -rf /etc/xray/vmess-$user-tls.json
rm -rf /etc/xray/vmess-$user-nontls.json
systemctl restart xray.service
systemctl reload nginx
service cron restart
clear
echo -e ""
echo -e "======-XRAYS/VMESS-======" | tee -a /etc/xray/vmess/$user.log
echo -e "Remarks     : ${user}" | tee -a /etc/xray/vmess/$user.log
echo -e "IP/Host     : ${MYIP}" | tee -a /etc/xray/vmess/$user.log
echo -e "Address     : ${domain}" | tee -a /etc/xray/vmess/$user.log
echo -e "Port TLS    : ${tls}" | tee -a /etc/xray/vmess/$user.log
echo -e "Port No TLS : ${nontls}" | tee -a /etc/xray/vmess/$user.log
echo -e "User ID     : ${uuid}" | tee -a /etc/xray/vmess/$user.log
echo -e "Alter ID    : 0" | tee -a /etc/xray/vmess/$user.log
echo -e "Security    : auto" | tee -a /etc/xray/vmess/$user.log
echo -e "Network     : ws" | tee -a /etc/xray/vmess/$user.log
echo -e "Path        : /vmess" | tee -a /etc/xray/vmess/$user.log
echo -e "Created     : $hariini" | tee -a /etc/xray/vmess/$user.log
echo -e "Expired     : $exp" | tee -a /etc/xray/vmess/$user.log
echo -e "=========================" | tee -a /etc/xray/vmess/$user.log
echo -e "Link TLS    : ${xrayv2ray1}" | tee -a /etc/xray/vmess/$user.log
echo -e "=========================" | tee -a /etc/xray/vmess/$user.log
echo -e "Link No TLS : ${xrayv2ray2}" | tee -a /etc/xray/vmess/$user.log
echo -e "=========================" | tee -a /etc/xray/vmess/$user.log
