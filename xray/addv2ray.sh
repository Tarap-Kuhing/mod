#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	Tarap-Kuhing
# //	Dscription: Xray Menu Management
# //	email: merahjambo@gmail.com
# //  telegram: https://t.me/Baung2012
# //====================================================
# // font color configuration | TARAP KUHING AUTOSCRIPT
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
TIMES="10"
CHATID=`cat /etc/Tarap-Kuhing/id`
KEY=`cat /etc/Tarap-Kuhing/token`
URL="https://api.telegram.org/bot$KEY/sendMessage"
domain=$(cat /etc/xray/domain)
clear
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
  clear
  echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
  echo -e "\e[42m         Add Xray/Vmess Account          \E[0m"
  echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

  read -rp "User: " -e user
  CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

  if [[ ${CLIENT_EXISTS} == '1' ]]; then
    clear
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e "\e[42m         Add Xray/Vmess Account          \E[0m"
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    echo "A client with the specified name was already created, please choose another name."
    echo ""
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    read -n 1 -s -r -p "Press any key to back on menu"
    menu
  fi
done

uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
read -p "Limit User (GB): " Quota
exp=$(date -d "$masaaktif days" +"%Y-%m-%d")
sed -i '/#vmess$/a\#?# '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
exp=$(date -d "$masaaktif days" +"%Y-%m-%d")
sed -i '/#vmessgrpc$/a\#?# '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
VMESS_WS=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "8443",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF`
VMESS_NON_TLS=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "none"
}
EOF`
cat >/etc/Tarap-Kuhing/public_html/vmess-$user.txt <<-END
====================================================================
             P R O J E C T  O F  T A R A P  K U H I N G
                       [Freedom Internet]
====================================================================
        https://github.com/Tarap-Kuhing/vps
====================================================================
              Format Vmess WS (CDN)
====================================================================

- name: Tarap-Kuhing-Vmess-$user-WS (CDN)
  type: vmess
  server: ${domain}
  port: 8443
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  udp: true
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vmess
    headers:
      Host: ${domain}
_______________________________________________________
              Format Vmess WS (CDN) Non TLS
_______________________________________________________

- name: Tarap-Kuhing-$user-WS (CDN) Non TLS
  type: vmess
  server: ${domain}
  port: 80
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  udp: true
  tls: false
  skip-cert-verify: false
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vmess
    headers:
      Host: ${domain}
_______________________________________________________
              Link Vmess Account
_______________________________________________________
Link TLS : vmess://$(echo $VMESS_WS | base64 -w 0)
_______________________________________________________
Link none TLS : vmess://$(echo $VMESS_NON_TLS | base64 -w 0)
_______________________________________________________



END
vmesslink1="vmess://$(echo $VMESS_WS | base64 -w 0)"
vmesslink2="vmess://$(echo $VMESS_NON_TLS | base64 -w 0)"
TEXT="
<code>───────────────────────────</code>
<code>    Xray/Vmess Account</code>
<code>───────────────────────────</code>
<code>Remarks      : ${user}</code>
<code>Domain       : ${domain}</code>
<code>User Quota   : ${Quota} GB</code>
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
<code>${vmesslink1}</code>
<code>───────────────────────────</code>
<code>Link NTLS    :</code> 
<code>${vmesslink2}</code>
<code>───────────────────────────</code>
<code>Expired On : $exp</code>
"
systemctl restart xray
systemctl reload nginx
service cron restart

if [ ! -e /etc/vmess ]; then
  mkdir -p /etc/vmess
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/vmess/${user}
fi
DATADB=$(cat /etc/vmess/.vmess.db | grep "^###" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/vmess/.vmess.db
fi
echo "### ${user} ${exp} ${uuid}" >>/etc/vmess/.vmess.db
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
clear
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "\e[42m    Xray/Vmess Account     \E[0m" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Remarks      : ${user}" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Domain       : ${domain}" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "User Quota   : ${Quota} GB" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Port TLS      : 8443" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Port NTLS    : 80" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "User ID      : ${uuid}" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "AlterId        : 0" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Security      : auto" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Network      : WS" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Path TLS     : /vmess " | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Path NLS     : /vmess " | tee -a /etc/Tarap-Kuhing/user.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Link TLS     : ${vmesslink1}" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Link NTLS    : ${vmesslink2}" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "Expired On : $exp" | tee -a /etc/Tarap-Kuhing/user.log
echo -e "" | tee -a /etc/Tarap-Kuhing/user.log
read -n 1 -s -r -p "Press any key to back on menu"

menu
