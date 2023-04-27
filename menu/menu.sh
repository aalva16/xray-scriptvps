#!/bin/bash
clear
echo -e "\e[36m╒════════════════════════════════════════════╕\033[0m"
echo -e " \E[0;41;36m                 INFO SERVER                \E[0m"
echo -e "\e[36m╘════════════════════════════════════════════╛\033[0m"
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
IPVPS=$(curl -s ipinfo.io/ip )
ISPVPS=$( curl -s ipinfo.io/org )
#clear
if [ "$cekup" = "day" ]; then
echo -e "System Uptime   :  $uphours $upminutes $uptimecek"
else
echo -e "System Uptime   :  $uphours $upminutes"
fi
echo -e "IP-VPS          :  $IPVPS"
echo -e "ISP-VPS         :  $ISPVPS"
echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║                ┃ Edited Script from Sulaiman L ┃                 ║" 
echo "╚══════════════════════════════════════════════════════════════════╝"
echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║                   ┃ XRAY CORE ┃  ┃ by AALVA ┃                    ║" 
echo "╚══════════════════════════════════════════════════════════════════╝"
echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║                           ┃  MENU  ┃                             ║" 
echo "╚══════════════════════════════════════════════════════════════════╝"
echo "╔══════════════════════════════════════════════════════════════════╗"  
echo "║ 1. Buat Semua Akun XRAY   ┃ Create Account                       ║"
echo "║ 2. Buat Akun Trojan       ┃ Create Trojan Account                ║"
echo "║ 3. Hapus Akun XRAY        ┃ Delete Account                       ║"
echo "║ 4. Cek Nama Domain        ┃ Domain Name Checker                  ║"
echo "║ 5. Cek IP Publik          ┃ Check Public IP                      ║"
echo "║ 6. Update DLL             ┃ Update ETC                           ║"
echo "║ 7. XRAY UPDATE Core       ┃ Update Core                          ║"
echo "║ 8. XRAY UPDATE SCRIPT     ┃ Update Script                        ║"
echo "║ 9. Hidupkan Ulang Xray    ┃ Restart Service XRAY                 ║"
echo "║ 10. Perbarui Sertifikat   ┃ Update Certificate                   ║"
echo "║ 11.Tambahkan Domain       ┃ ADD DOMAIN                           ║"
echo "║ 12.CARA POINTING DOMAIN   ┃                                      ║"
echo "║ 13.Test Kecepatan Server  ┃ Speedtest Server                     ║"
echo "║ 14.Hidupkan Ulang VPS     ┃ Reboot                               ║"
echo "║ 15.Keluar Dari Menu       ┃ Exit Menu                            ║"
echo "║ 16.Info Script            ┃                                      ║"
echo "║ 17.Auto Pointing Subdomain┃                                      ║"
echo "║ 18.Cek Semua Layanan Port ┃ Check All Port Service               ║"
echo "╚══════════════════════════════════════════════════════════════════╝" 
read -p "     Select From Options [1-69 or x] :  " xmenu
case $menu in 
1)
add-akun
;;
2)
add-trojan
;;
3)
delete-akun
;;
4)
cat /etc/xray/domain
;;
5)
curl -s ipinfo.io/ip
;;
6)
updatedll
;;
7)
updatecore
;;
8)
updatesc
;;
9)
restart-xray
;;
10)
certv2ray
;;
11)
add-domain
;;
12)
how-pointing
;;
13)
speedtest
;;
14)
reboot
;;
15)
exit
;;
16)
cat /root/log-install.txt
;;
17)
auto-pointing
;;
18)
cek-port
;;
*)
echo "Input The Correct Number !"
;;
esac
