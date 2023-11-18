sudo apt update
#无交互安装键盘
sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y
sudo apt install -y xfce4 task-xfce-desktop xrdp baobab
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
sudo apt clean
