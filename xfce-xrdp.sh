sudo apt update
sudo apt install -y xfce4 xrdp
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
echo "run if useful:  sudo apt install -y task-xfce-desktop"
