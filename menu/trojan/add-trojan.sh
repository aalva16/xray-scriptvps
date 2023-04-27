echo "╔═════════════════════════════════════════════════════════════════╗"
echo "║                       ┃  TROJAN MENU  ┃                         ║" 
echo "╚═════════════════════════════════════════════════════════════════╝"
echo "╔═════════════════════════════════════════════════════════════════╗"  
echo "║ 1. Buat Akun Trojan WS        ┃ Create Account Trojan WS        ║"
echo "║ 2. Buat Akun Trojan GRPC      ┃ Create Account Trojan WS        ║"
echo "║ 3. Perpanjang Akun            ┃ Renew Account                   ║"
echo "║ 4. Hapus Akun                 ┃ Delete Account                  ║"
echo "║ 5. Batasi Akun                ┃ Limit Account                   ║"
echo "║ 6. Suspend Akun               ┃ Suspend Account                 ║"
echo "║ 9. Kembali                    ┃ Back to menu                    ║"
echo "╚═════════════════════════════════════════════════════════════════╝" 
read -p "     Select From Options [1-69 or x] :  " xmenu
case $menu in 
1)
trojan-ws
;;
2)
trojan-grpc
;;
3)
renew-trojan
;;
4)
delete-trojan
;;
5)
limit-tojan
;;
6)
suspend-trojan
;;
9)
menu
;;
*)
echo "Masukan Nomor Yang Benar / Input The Correct Number !"
;;
esac