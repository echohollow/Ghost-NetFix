#!/bin/bash
# ghost-netfix.sh — Fix internet + DNS for NAT + stealth boot

echo "[*] Killing broken DNS and restoring stealth routing..."

# 1. Remove broken resolver symlink
sudo rm -f /etc/resolv.conf

# 2. Inject clean DNS resolvers manually
sudo bash -c 'echo -e "nameserver 1.1.1.1\nnameserver 9.9.9.9" > /etc/resolv.conf'

# 3. Restart networking stack
sudo systemctl restart NetworkManager

# 4. Kill Firefox (if leaking)
killall firefox 2>/dev/null

# 5. Wait a sec
sleep 1

# 6. Confirm DNS
echo "[+] DNS test:"
dig google.com +short
echo "[+] External IP:"
curl ifconfig.me 2>/dev/null

echo "[✓] Internet restored. You're clean."

# Optional: Autolaunch Firefox safely
# firefox &>/dev/null &
