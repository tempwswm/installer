sudo apt update
sudo apt install -y xfce4 xrdp task-xfce-desktop baobab
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
sudo apt clean
