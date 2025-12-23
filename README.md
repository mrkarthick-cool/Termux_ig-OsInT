<p align="center">
  <img src="https://img.shields.io/badge/OSINT-Instagram-red?style=for-the-badge&logo=instagram">
  <img src="https://img.shields.io/badge/Termux-Android-green?style=for-the-badge&logo=android">
  <img src="https://img.shields.io/badge/Shell-Bash-black?style=for-the-badge&logo=gnu-bash">
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/mrkarthick-cool/Termux_ig-OsInT?style=flat-square">
  <img src="https://img.shields.io/github/forks/mrkarthick-cool/Termux_ig-OsInT?style=flat-square">
  <img src="https://img.shields.io/github/issues/mrkarthick-cool/Termux_ig-OsInT?style=flat-square">
  <img src="https://img.shields.io/github/license/mrkarthick-cool/Termux_ig-OsInT?style=flat-square">
</p>

<h1 align="center">⚡ Termux Instagram OSINT Tool</h1>
<h3 align="center">Public Instagram OSINT Tool with Web GUI</h3>

<p align="center">
  <b>By Drak24Evil</b><br>
  Ethical Hacking • OSINT • Cybersecurity
</p>

---

## 🔗 GitHub Repository
👉 https://github.com/mrkarthick-cool/Termux_ig-OsInT

---

## 🧠 About This Tool

| Feature | Description |
|------|------------|
| 📸 Target | Public Instagram Accounts |
| 🐧 Platform | Termux (Android) |
| 🖥️ GUI | PHP Web Dashboard |
| ⚙️ Backend | Bash + curl + jq |
| 🔓 Login | ❌ Not Required |
| 🛡️ Purpose | Educational OSINT Only |

---

## ⚠️ Disclaimer

> This tool is made **ONLY for educational and ethical OSINT purposes**.  
> The author is **NOT responsible** for misuse or illegal activity.

---

## 🧩 STEP 1 — Install Termux (Correct Source)

⚠️ **DO NOT use Google Play Store** (outdated & broken)

| Action | Instruction |
|----|----|
| 📦 Source | F-Droid |
| 🔍 Search | Termux |
| ⬇️ Install | Latest Version |
| ▶️ Open | Once after install |

---

## 🧩 STEP 2 — Initial Setup (MANDATORY)

```bash
termux-change-repo
✔ Enable Main repository
✔ Enable Stable repository
✔ Press OK

Update system:

bash
Copy code
pkg update && pkg upgrade -y
🧩 STEP 3 — Install Required Packages
bash
Copy code
pkg install curl jq php -y
Verify installation:

bash
Copy code
curl --version
jq --version
php -v
🧩 STEP 4 — Clone Tool from GitHub
bash
Copy code
cd ~
git clone https://github.com/mrkarthick-cool/Termux_ig-OsInT
cd Termux_ig-OsInT
🧩 STEP 5 — Make Script Executable
bash
Copy code
chmod +x ig.sh
ls -l ig.sh
Expected output:

text
Copy code
-rwxr-xr-x
🧩 STEP 6 — Run the Tool
bash
Copy code
./ig.sh <username>
Example:

bash
Copy code
./ig.sh priya
📟 Expected Output
text
Copy code
Instagram OSINT data
[+] GUI running at: http://127.0.0.1:8080
⚠️ Do NOT close Termux

🧩 STEP 7 — Open Web GUI
Open browser and visit:

text
Copy code
http://127.0.0.1:8080
🖥️ GUI Output
Data	Status
Profile Picture	✅
Username	✅
Full Name	✅
Bio	✅
Posts	✅
Followers	✅
Following	✅
Private Status	✅

📌 Author Links
Telegram: https://t.me/Drak24Evil

GitHub: https://github.com/mrkarthick-cool

YouTube: https://youtube.com/@mranonymousking5638

