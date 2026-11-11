#!/bin/bash
# ========================================================
# Skrip Setup Lingkungan Web Server, FTP, dan Suricata IDS
# Target Node: Ubuntu Server
# ========================================================

echo "[+] Memperbarui repository sistem..."
sudo apt update -y

echo "[+] Memasang Apache2 Web Server dan ProFTPD..."
sudo apt install apache2 proftpd -y

echo "[+] Memasang Suricata IDS..."
sudo apt install suricata -y

echo "[+] Mengaktifkan layanan..."
sudo systemctl enable --now apache2
sudo systemctl enable --now proftpd

echo "[+] Setup selesai. Memeriksa status port 80 dan 21:"
sudo ss -tuln | grep -E ':80|:21'
