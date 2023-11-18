#换源
sed -i 's#http://deb.debian.org#https://mirrors.163.com#g' /etc/apt/sources.list
#更换时区
ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#换编码
apt update && sudo apt install locales -y
locale-gen en_US en_US.UTF-8 zh_CN.UTF-8
update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
#安装基础工具
apt install wget nano sudo whiptail -y
