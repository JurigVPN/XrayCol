#!/bin/bash
LocalVersion=$(cat /root/versi)
Version=$(curl -sS https://raw.githubusercontent.com/JurigVPN/XrayCol/main/update/versi | awk '{print $2}')
if [ $LocalVersion = $Version ]; then
echo -e "\e[32mScript By @JurigVPN\e[0m"
else
echo -e "\e[32mAda Update Script!!\e[0m";
wget -q -O updateyes.sh https://raw.githubusercontent.com/JurigVPN/XrayCol/main/update/updateyes.sh && chmod +x updateyes.sh && ./updateyes.sh
rm -f updateyes.sh
fi
