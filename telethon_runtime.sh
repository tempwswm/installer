sudo apt update
sudo apt install -y python3-pip 
sudo apt clean
pip3 unistall cryptg
pip3 --no-cache-dir install telethon-tgcrypto telethon jupyter
mkdir -p ~/jupyter
cd ~/jupyter
wget https://gist.githubusercontent.com/painor/7e74de80ae0c819d3e9abcf9989a8dd6/raw/a98abd5ff5cae3640e785611a38c0e213df56343/FastTelethon.py
echo -e "\n\nset passed: \n\tjupyter notebook password"
echo -e "\nrun jupyter: \n\tjupyter notebook  --ip=0.0.0.0 --no-browser --allow-root --notebook-dir=\"~/jupyter\""
