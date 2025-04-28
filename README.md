# Ghost-NetFix

Stealth network fixer script for Kali Linux after MAC address changes, NAT reconfigurations, or stealth boot scenarios.

## 📜 About

**Ghost-NetFix** safely restores internet access and DNS functionality after network disruptions,  
especially useful after MAC spoofing, NAT hops, or stealth reboots.

Features:

- Flush broken resolvers
- Inject stealth DNS servers manually
- Restart networking stack cleanly
- Kill leaking applications (like Firefox)
- Verify external DNS and IP status

## ⚙️ Usage

1. Download the script:

```bash
git clone https://github.com/echohollow/ghost-netfix.git
cd ghost-netfix
chmod +x ghost-netfix.sh
