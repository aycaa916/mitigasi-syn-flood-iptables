#!/bin/bash
# ========================================================
# Skrip Mitigasi Firewall IPTables untuk Serangan SYN Flood
# Target Node: Ubuntu Server (192.168.56.104)
# ========================================================

ATTACKER_IP="192.168.56.103"

if [ "$1" == "block" ]; then
    echo "[+] Memblokir lalu lintas HTTP (port 80) dari IP Penyerang ($ATTACKER_IP)..."
    sudo iptables -I INPUT 1 -s $ATTACKER_IP -p tcp --dport 80 -j DROP
    echo "[+] Aturan iptables berhasil diterapkan:"
    sudo iptables -L INPUT -n -v --line-numbers

elif [ "$1" == "unblock" ]; then
    echo "[-] Menghapus aturan pemblokiran untuk $ATTACKER_IP..."
    sudo iptables -D INPUT -s $ATTACKER_IP -p tcp --dport 80 -j DROP
    echo "[-] Pemblokiran dicabut."

else
    echo "Penggunaan:"
    echo "  bash mitigate.sh block   -> Aktifkan firewall memblokir penyerang"
    echo "  bash mitigate.sh unblock -> Buka kembali akses penyerang"
fi
