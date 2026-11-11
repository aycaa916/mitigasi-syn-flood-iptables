# 🛡️ Implementasi Firewall IPTables & Suricata IDS untuk Mitigasi SYN Flood

Repositori ini berisi dokumentasi, simulasi, dan skrip mitigasi serangan **Denial of Service (DoS) SYN Flood** pada Ubuntu Server menggunakan **iptables** sebagai Firewall dan **Suricata** sebagai Intrusion Detection System (IDS).

---

### 🧰 Tools & Environment
- **Target Server:** Ubuntu Server (Apache2 HTTP & ProFTPD)
- **Attacker Node:** Kali Linux (Hping3 & Nmap)
- **Security & Analysis:** iptables & Suricata IDS
- **Virtualization:** Oracle VirtualBox (Host-Only Network)

---

### 🌐 Skenario Simulasi
1. **Monitoring:** Suricata memantau lalu lintas jaringan inbound pada port 80 (HTTP) dan port 21 (FTP).
2. **Serangan:** Kali Linux meluncurkan serangan SYN Flood menggunakan `hping3 --flood`.
3. **Deteksi:** Suricata mencatat anomali *three-way handshake* TCP pada log `fast.log`.
4. **Mitigasi:** Aturan `iptables` diterapkan untuk memblokir paket TCP dari IP penyerang.

---

### 📊 Hasil Pengujian (Before vs After)

| Parameter Pengujian | Sebelum Firewall | Sesudah Firewall (iptables) |
| :--- | :--- | :--- |
| **Status Port 80 (Nmap)** | `Open` | `Filtered` |
| **Akses Web (Curl)** | Berhasil (200 OK) | Gagal (`Could not connect`) |
| **Tingkat Keamanan** | Rendah | Tinggi (Akses Diblokir) |

---

### 📄 Dokumentasi Lengkap
Laporan lengkap tugas akhir dapat diunduh pada repositori ini:
👉👉 [Download Laporan Tugas Akhir (PDF)](<./laporan tugas akhir.pdf>)
