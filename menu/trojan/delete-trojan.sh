#!/bin/bash
# ==========================================

MYIP=$(curl -sS ipv4.icanhazip.com)



clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/config.json")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		echo "╔═════════════════════════════════════════════════════════════════╗"
        echo "║                   ┃  Delete TROJAN Account  ┃                   ║"
        echo "╚═════════════════════════════════════════════════════════════════╝"
		echo "                                                                   "
		echo "                    You have no existing clients!                  "
		echo "                                                                   "
		echo "═══════════════════════════════════════════════════════════════════"
		read -n 1 -s -r -p "Press any key to back on menu"
        menu
	fi

	clear
	echo "╔═════════════════════════════════════════════════════════════════╗"
    echo "║                   ┃  Delete TROJAN Account  ┃                   ║"
    echo "╚═════════════════════════════════════════════════════════════════╝"
    echo "                        User       Expired                         " 
	echo "═══════════════════════════════════════════════════════════════════"
	grep -E "^### " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq
    echo ""
    red "tap enter to go back"
    echo "═══════════════════════════════════════════════════════════════════"
	read -rp "Input Username : " user
    if [ -z $user ]; then
    menu
    else
    exp=$(grep -wE "^### $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
    sed -i "/^### $user $exp/,/^},{/d" /etc/xray/config.json
    systemctl restart xray > /dev/null 2>&1
    clear
    echo "═══════════════════════════════════════════════════════════════════"
    echo " TROJAN Account Deleted Successfully"
    echo "═══════════════════════════════════════════════════════════════════"
    echo " Client Name : $user"
    echo " Expired On  : $exp"
    echo "═══════════════════════════════════════════════════════════════════"
    echo ""
    read -n 1 -s -r -p "Press any key to back on menu"
    
    menu
    fi
