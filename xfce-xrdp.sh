sudo apt update
sudo apt install -y xfce4 xrdp
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
echo "\n\nrun if useful:\n\tsudo apt install -y task-xfce-desktop"
