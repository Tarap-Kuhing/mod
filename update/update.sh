#!/bin/bash
# Link Hosting Kalian
akbarvpn="raw.githubusercontent.com/Tarap-Kuhing/mod/main/ssh"

# Link Hosting Kalian Untuk Xray
akbarvpnn="raw.githubusercontent.com/Tarap-Kuhing/mod/main/xray"

# Link Hosting Kalian Untuk Trojan Go
akbarvpnnn="raw.githubusercontent.com/Tarap-Kuhing/mod/main/trojango"

echo -e "SEDANG MELAKUKAN UPDATE SCRIPT"
sleep 2

rm -rf portsshnontls
rm -rf portsshws

rm -rf sshovpnmenu
rm -rf l2tpmenu
rm -rf pptpmenu
rm -rf sstpmenu
rm -rf wgmenu
rm -rf ssmenu
rm -rf ssrmenu
rm -rf vmessmenu
rm -rf vlessmenu
rm -rf trmenu
rm -rf trgomenu
rm -rf setmenu

rm -rf addhost
rm -rf menu
rm -rf update
rm -rf running
rm -rf addssh
rm -rf trialssh
rm -rf delssh
rm -rf member
rm -rf delexp
rm -rf cekssh
rm -rf restart
rm -rf speedtest
rm -rf info
rm -rf about
rm -rf autokill
rm -rf tendang
rm -rf ceklim
rm -rf ram
rm -rf renewssh
rm -rf clearlog
rm -rf changeport
rm -rf portovpn
rm -rf portwg
rm -rf porttrojan
rm -rf portsstp
rm -rf portsquid
rm -rf portvlm
rm -rf wbmn
rm -rf xp
rm -rf swapkvm
rm -rf addvmess
rm -rf addvless
rm -rf addtrojan
rm -rf delvmess
rm -rf delvless
rm -rf deltrojan
rm -rf cekvmess
rm -rf cekvless
rm -rf cektrojan
rm -rf renewvmess
rm -rf renewvless
rm -rf renewtrojan
rm -rf certv2ray
rm -rf addtrgo
rm -rf deltrgo
rm -rf renewtrgo
rm -rf cektrgo
rm -rf botapi
rm -rf listvmess

# download script
cd /usr/bin
wget -O addhost "https://${akbarvpn}/addhost.sh"
wget -O about "https://${akbarvpn}/about.sh"
wget -O menu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/menu.sh"
wget -O update "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/update.sh"
wget -O running "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/running.sh"
wget -O addssh "https://${akbarvpn}/addssh.sh"
wget -O trialssh "https://${akbarvpn}/trialssh.sh"
wget -O delssh "https://${akbarvpn}/delssh.sh"
wget -O member "https://${akbarvpn}/member.sh"
wget -O delexp "https://${akbarvpn}/delexp.sh"
wget -O cekssh "https://${akbarvpn}/cekssh.sh"
wget -O restart "https://${akbarvpn}/restart.sh"
wget -O speedtest "https://${akbarvpn}/speedtest_cli.py"
wget -O info "https://${akbarvpn}/info.sh"
wget -O ram "https://${akbarvpn}/ram.sh"
wget -O renewssh "https://${akbarvpn}/renewssh.sh"
wget -O autokill "https://${akbarvpn}/autokill.sh"
wget -O ceklim "https://${akbarvpn}/ceklim.sh"
wget -O tendang "https://${akbarvpn}/tendang.sh"
wget -O clearlog "https://${akbarvpn}/clearlog.sh"
wget -O changeport "https://${akbarvpn}/changeport.sh"
wget -O portovpn "https://${akbarvpn}/portovpn.sh"
wget -O portwg "https://${akbarvpn}/portwg.sh"
wget -O porttrojan "https://${akbarvpn}/porttrojan.sh"
wget -O portsstp "https://${akbarvpn}/portsstp.sh"
wget -O portsquid "https://${akbarvpn}/portsquid.sh"
wget -O portvlm "https://${akbarvpn}/portvlm.sh"
wget -O wbmn "https://${akbarvpn}/webmin.sh"
wget -O xp "https://${akbarvpn}/xp.sh"
wget -O swapkvm "https://${akbarvpn}/swapkvm.sh"
wget -O addvmess "https://${akbarvpnn}/addv2ray.sh"
wget -O addvless "https://${akbarvpnn}/addvless.sh"
wget -O addtrojan "https://${akbarvpnn}/addtrojan.sh"
wget -O delvmess "https://${akbarvpnn}/delv2ray.sh"
wget -O delvless "https://${akbarvpnn}/delvless.sh"
wget -O deltrojan "https://${akbarvpnn}/deltrojan.sh"
wget -O cekvmess "https://${akbarvpnn}/cekv2ray.sh"
wget -O cekvless "https://${akbarvpnn}/cekvless.sh"
wget -O cektrojan "https://${akbarvpnn}/cektrojan.sh"
wget -O renewvmess "https://${akbarvpnn}/renewv2ray.sh"
wget -O renewvless "https://${akbarvpnn}/renewvless.sh"
wget -O renewtrojan "https://${akbarvpnn}/renewtrojan.sh"
wget -O certv2ray "https://${akbarvpnn}/certv2ray.sh"
wget -O addtrgo "https://${akbarvpnnn}/addtrgo.sh"
wget -O deltrgo "https://${akbarvpnnn}/deltrgo.sh"
wget -O renewtrgo "https://${akbarvpnnn}/renewtrgo.sh"
wget -O cektrgo "https://${akbarvpnnn}/cektrgo.sh"
wget -O portsshnontls "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/websocket/portsshnontls.sh"
wget -O portsshws "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/websocket/portsshws.sh"

wget -O sshovpnmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/sshovpn.sh"
wget -O l2tpmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/l2tpmenu.sh"
wget -O pptpmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/pptpmenu.sh"
wget -O sstpmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/sstpmenu.sh"
wget -O wgmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/wgmenu.sh"
wget -O ssmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/ssmenu.sh"
wget -O ssrmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/ssrmenu.sh"
wget -O vmessmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/vmessmenu.sh"
wget -O vlessmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/vlessmenu.sh"
wget -O trmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/trmenu.sh"
wget -O trgomenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/trgomenu.sh"
wget -O setmenu "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/update/setmenu.sh"
wget -O botapi "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/ssh/botapi"
wget -O listvmess "https://raw.githubusercontent.com/Tarap-Kuhing/mod/main/xray/listvmess.sh"


chmod +x portsshnontls
chmod +x portsshws

chmod +x sshovpnmenu
chmod +x l2tpmenu
chmod +x pptpmenu
chmod +x sstpmenu
chmod +x wgmenu
chmod +x ssmenu
chmod +x ssrmenu
chmod +x vmessmenu
chmod +x vlessmenu
chmod +x trmenu
chmod +x trgomenu
chmod +x setmenu

chmod +x addhost
chmod +x menu
chmod +x update
chmod +x running
chmod +x addssh
chmod +x trialssh
chmod +x delssh
chmod +x member
chmod +x delexp
chmod +x cekssh
chmod +x restart
chmod +x speedtest
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renewssh
chmod +x clearlog
chmod +x changeport
chmod +x portovpn
chmod +x portwg
chmod +x porttrojan
chmod +x portsstp
chmod +x portsquid
chmod +x portvlm
chmod +x wbmn
chmod +x xp
chmod +x swapkvm
chmod +x addvmess
chmod +x addvless
chmod +x addtrojan
chmod +x delvmess
chmod +x delvless
chmod +x deltrojan
chmod +x cekvmess
chmod +x cekvless
chmod +x cektrojan
chmod +x renewvmess
chmod +x renewvless
chmod +x renewtrojan
chmod +x certv2ray
chmod +x addtrgo
chmod +x deltrgo
chmod +x renewtrgo
chmod +x cektrgo
chmod +x botapi
chmod +x listvmess
echo -e "UPDATE SCRIPT SELESAI"
sleep 5
cd
menu
