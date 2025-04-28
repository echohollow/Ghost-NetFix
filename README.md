# Ghost-NetFix

Stealth DNS and network recovery utility for Kali Linux, tailored for NAT-based operations and stealth environments.

## 📜 Overview

**Ghost-NetFix** repairs internet and DNS leaks after MAC address spoofing, NAT reconfiguration, VPN disruptions, or stealth boots.

It is built for operators who need quick recovery of clean network routes without leaving residual misconfigurations.

**Core Actions:**
- Kill broken DNS resolvers
- Inject stealth DNS servers manually (1.1.1.1 and 9.9.9.9)
- Restart the networking stack cleanly
- Kill leaking processes (e.g., Firefox)
- Verify external DNS and IP stealth status

---

## ⚙️ Usage

1. Clone the repository:

```bash
git clone https://github.com/echohollow/Ghost-NetFix.git
cd Ghost-NetFix
chmod +x ghost-netfix.sh
