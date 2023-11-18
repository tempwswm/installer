sudo apt update
#无交互安装键盘
sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y

# 远程桌面组件
sudo apt install -y xfce4  xrdp baobab

#可选工具包
#sudo apt install -y xfce4-goodies
#sudo apt install -y task-xfce-desktop

#设置xrdp
sudo adduser xrdp ssl-cert
#sudo systemctl restart xrdp
sudo /etc/init.d/xrdp restart

sudo apt clean
