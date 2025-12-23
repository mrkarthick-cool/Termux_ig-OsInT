#!/data/data/com.termux/files/usr/bin/bash

clear
set -e
echo -e "\033[0;32m"
echo ""
echo "╭━━╮╱╱╱╭━━━╮╱╱╭━━╮╱╭━━━━╮"
echo "╰┫┣╯╱╱╱┃╭━╮┃╱╱╰┫┣╯╱┃╭╮╭╮┃"
echo "╱┃┃╭━━╮┃┃╱┃┣━━╮┃┃╭━╋╯┃┃╰╯"
echo " ╱┃┃┃╭╮┃┃┃╱┃┃━━┫┃┃┃╭╮╮┃┃"
echo "╭┫┣┫╰╯┃┃╰━╯┣━━┣┫┣┫┃┃┃┃┃"
echo "╰━━┻━╮┃╰━━━┻━━┻━━┻╯╰╯╰╯"
echo "╱╱╱╭━╯┃"
echo "╱╱╱╰━━╯"
echo ""                                                                         
date
echo ""
echo "TOoL DeV : https://t.me/Drak24Evil"
echo ""
echo "Termux suppoted"
echo ""
 echo " join Telegram Grop  : https://t.me/teluguhackersgroup1 "
echo ""
  echo "Usage: ./ig.sh <username>"
echo ""
sleep 2
# ---------- CHECK INPUT ----------
if [ -z "$1" ]; then
  echo "Use tool for leagl way "
  exit 1
fi

USER="$1"

# ---------- FIXED PATHS ----------
BASE="$(pwd)"
PUBLIC="$BASE/public"

mkdir -p "$PUBLIC"

# ---------- FETCH ----------
JSON=$(curl -s \
  -H "User-Agent: Mozilla/5.0" \
  -H "X-IG-App-ID: 936619743392459" \
  "https://www.instagram.com/api/v1/users/web_profile_info/?username=$USER")

if [ "$(echo "$JSON" | jq -r '.data.user')" = "null" ]; then
  echo "[!] User not found / blocked"
  exit 1
fi

clear
echo ""

echo "╭━━╮╱╱╱╭━━━╮╱╱╭━━╮╱╭━━━━╮"
echo "╰┫┣╯╱╱╱┃╭━╮┃╱╱╰┫┣╯╱┃╭╮╭╮┃"
echo "╱┃┃╭━━╮┃┃╱┃┣━━╮┃┃╭━╋╯┃┃╰╯"
echo " ╱┃┃┃╭╮┃┃┃╱┃┃━━┫┃┃┃╭╮╮┃┃"
echo "╭┫┣┫╰╯┃┃╰━╯┣━━┣┫┣┫┃┃┃┃┃"
echo "╰━━┻━╮┃╰━━━┻━━┻━━┻╯╰╯╰╯"
echo "╱╱╱╭━╯┃"
echo "╱╱╱╰━━╯"
echo ""
date
echo ""
echo "TOoL DeV : https://t.me/Drak24Evil"
echo ""
echo "Termux suppoted"
echo ""
  echo "Usage: ./ig.sh <username>"
echo ""
# ---------- PARSE ----------
USERNAME=$(echo "$JSON" | jq -r '.data.user.username')
FULLNAME=$(echo "$JSON" | jq -r '.data.user.full_name')
BIO=$(echo "$JSON" | jq -r '.data.user.biography')
POSTS=$(echo "$JSON" | jq -r '.data.user.edge_owner_to_timeline_media.count')
FOLLOWERS=$(echo "$JSON" | jq -r '.data.user.edge_followed_by.count')
FOLLOWING=$(echo "$JSON" | jq -r '.data.user.edge_follow.count')
PRIVATE=$(echo "$JSON" | jq -r '.data.user.is_private')
PIC=$(echo "$JSON" | jq -r '.data.user.profile_pic_url_hd')

# ---------- DOWNLOAD IMAGE ----------
curl -s "$PIC" -o "$PUBLIC/profile.jpg"

# ---------- TERMINAL OUTPUT ----------
echo "========================================"
echo " Instagram OSINT (By : T.me/Drak24Evil)"
echo "========================================"
echo ""
echo "Username     : $USERNAME"
echo ""
echo "Full Name    : $FULLNAME"
echo ""
echo "Bio          : $BIO"
echo ""
echo "Posts        : $POSTS"
echo ""
echo "Followers    : $FOLLOWERS"
echo ""
echo "Following    : $FOLLOWING"
echo ""
echo "Private      : $PRIVATE"
echo ""
echo "Profile Pic  : $PIC"
echo ""
echo "=============================="

# ---------- HTML (ONE FILE ONLY) ----------
cat > "$PUBLIC/index.html" <<EOF
<!DOCTYPE html>
<html>
<head>
<title> Termux Instagram OSINT</title>

<style>
body{
    background: radial-gradient(circle at top, #020b12, #000);
    color:#00ffcc;
    font-family: "Courier New", monospace;
}


.container{
    width:720px;
    margin:auto;
    margin-top:40px;
}


.card{
    background: rgba(0,0,0,0.6);
    border:2px solid #00ffcc;
    border-radius:10px;
    padding:25px;
    margin-bottom:20px;
    box-shadow:0 0 20px rgba(0,255,204,0.25);
}


.header{
    text-align:center;
}

.header img{
    border-radius:50%;
    border:2px solid #00ffcc;
    box-shadow:0 0 20px rgba(0,255,204,0.6);
    margin-bottom:10px;
}

h2{
    letter-spacing:2px;
    text-shadow:0 0 10px #00ffcc;
}


.grid{
    display:grid;
    grid-template-columns: 1fr 1fr;
    gap:15px;
}

.info-card{
    border:1px solid #00ffcc;
    border-radius:8px;
    padding:12px;
    box-shadow: inset 0 0 10px rgba(0,255,204,0.2);
}


a{
    color:#00ffcc;
    text-decoration:none;
}

a:hover{
    text-decoration:underline;
}


.footer{
    text-align:center;
    margin-top:10px;
}
</style>
</head>

<body>

<div class="container">


    <div class="card header">
        <h2> TERMINAL · IG OSINT MODULE </h2><br>
        <img src="profile.jpg" width="160">
        <p><b>Username:</b> $USERNAME</p>
        <p><b>Full Name:</b> $FULLNAME</p>
        <p><b>Bio:</b> $BIO</p>
    </div>


    <div class="card">
        <div class="grid">
            <div class="info-card"><b>Posts</b><br>$POSTS</div>
            <div class="info-card"><b>Followers</b><br>$FOLLOWERS</div>
            <div class="info-card"><b>Following</b><br>$FOLLOWING</div>
            <div class="info-card"><b>Private</b><br>$PRIVATE</div>
        </div>
    </div>


    <div class="card footer">
        <p><b>Instagram :</b>
            <a href="https://instagram.com/mr_rkarthik" target="_blank">@mr_rkarthik</a>
        </p>

        <p><b>Telegram :</b>
            <a href="https://t.me/Drak24Evil" target="_blank">@Drak24Evil</a>
        </p>

        <p><b>YouTube :</b>
            <a href="https://youtube.com/@mranonymousking5638" target="_blank">
                @mranonymousking5638
            </a>
        </p>

        <p><b>Telegram Group :</b>
            <a href="https://t.me/teluguhackersgroup1" target="_blank">
                Telugu Hackers Group
            </a>
        </p>
    </div>

</div>

</body>
</html>

EOF

# ---------- SERVER (FOREVER RUNNING) ----------
echo "[+] GUI running at: http://127.0.0.1:8080"
echo "[+] Press CTRL+C to stop"

cd "$PUBLIC"
php -S 127.0.0.1:8080
