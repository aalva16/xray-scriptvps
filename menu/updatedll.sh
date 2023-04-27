#!/bin/bash
# ==========================================
cd
rm -r updatedll
wget -O updatedll "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/updatedll.sh"
rm -rf updatedll

# hapus
cd /usr/bin
rm -rf menu
rm -rf updatedll
rm -r updatedll
# download
#
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/menu.sh"
wget -O add-akun "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/add-akun.sh"
wget -O updatedll "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/updatedll.sh"
wget -O add-akun "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/add-akun.sh"
wget -O delete-akun "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/delete-akun.sh"
wget -O certv2ray "https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/xray/certv2ray.sh"
wget -O restart-xray "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/restart-xray.sh"
wget -O menu "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/menu.sh"
wget -O auto-pointing "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/auto-pointing.sh"
wget -O cek-port "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/cek-port.sh"
wget -O menu "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/menu.sh"
wget -O add-trojan "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/trojan/add-trojan.sh"
wget -O trojan-ws "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/trojan/trojan-ws.sh"
wget -O trojan-grpc "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/trojan/trojan-grpc.sh"
wget -O delete-trojan "https://raw.githubusercontent.com/aalva16/xray-scriptvps/main/menu/trojan/delete-trojan.sh"

#
chmod +x /usr/bin/updatedll
chmod +x /usr/bin/menu
chmod +x menu
chmod +x add-akun
chmod +x delete-akun
chmod +x updatedll
chmod +x add-akun
chmod +x certv2ray
chmod +x restart-xray
chmod +x auto-pointing
chmod +x cek-port
chmod +x add-trojan
chmod +x trojan-ws
chmod +x trojan-grpc
chmod +x delete-trojan

cd
