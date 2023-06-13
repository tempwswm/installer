sudo apt update
sudo apt install -y xfce4 task-xfce-desktop xrdp baobab
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
sudo apt clean
