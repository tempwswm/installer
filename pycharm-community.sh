wget https://download-cdn.jetbrains.com/python/pycharm-community-2023.1.2.tar.gz -O pycharm.tar.gz
sudo mkdir -p /opt/pycharm
sudo tar -xzvf pycharm.tar.gz -C /opt/pycharm
rm pycharm.tar.gz
echo -e "\n\nrun pycharm:\n\t" $(find /opt/pycharm -name "pycharm.sh")
