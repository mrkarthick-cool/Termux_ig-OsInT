#⚡ #Termux Instagram OSINT Tool – Hacker Installation Guide

By: Drak24Evil

#🔗 GitHub Repository
👉 https://github.com/mrkarthick-cool/Termux_ig-OsInT

#🧩 STEP 1 — Install Termux (Correct Source)

#⚠️ DO NOT use Google Play Store (outdated & broken)

✅ Install via F-Droid

Install F-Droid

Open F-Droid → Search Termux

Install the latest version

Open Termux once after installation

#🧩 STEP 2 — Initial Setup (MANDATORY)

Run this command first:

termux-change-repo


✔ Enable Main repository
✔ Enable Stable repository
✔ Press OK

Then update system:

pkg update && pkg upgrade -y

#🧩 STEP 3 — Install Required Packages

Minimum packages required for OSINT + GUI server:

pkg install curl jq php -y

🔍 Verify installation
curl --version
jq --version
php -v


✅ All three commands must return version info

#🧩 STEP 4 — Clone Tool from GitHub

Go to home directory:

cd ~


Clone repository:

git clone https://github.com/mrkarthick-cool/Termux_ig-OsInT


Enter tool directory:

cd Termux_ig-OsInT


#🧩 STEP 5 — Make Script Executable
chmod +x ig.sh

✅ Confirm permission
ls -l ig.sh


Expected output:

-rwxr-xr-x

#🧩 STEP 6 — Run the Tool

Usage:

./ig.sh <username>


Example:

./ig.sh priya

#📟 Expected Terminal Output
Instagram OSINT data
[+] GUI running at: http://127.0.0.1:8080


⚠️ PHP server keeps running — do NOT close Termux

#🧩 STEP 7 — Open Web GUI (Hacker Dashboard)

Open any browser on the same device and visit:

http://127.0.0.1:8080

#✅ You will see:

Profile picture

Username / Bio

Followers / Following / Posts
