#换源
sed -i 's#http://deb.debian.org#http://mirrors.tuna.tsinghua.edu.cn#g' /etc/apt/sources.list
#更换时区
ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#换编码
apt update && apt install locales -y
sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen
sed -i '/zh_CN.UTF-8/s/^# //g' /etc/locale.gen
locale-gen
update-locale LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

#安装基础工具
apt install wget nano sudo whiptail curl net-tools -y

