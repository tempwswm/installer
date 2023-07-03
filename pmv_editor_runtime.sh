sudo apt update
sudo apt install -y python3-pip rubberband-cli ffmpeg
sudo apt clean
pip3 --no-cache-dir install moviepy pygame-ce Pillow matplotlib pyrubberband jupyterlab spleeter
pip3 --no-cache-dir install jupyterlab-lsp jedi-language-server
mkdir ~/jupyter
echo -e "\n\nset passed: \n\tjupyter-lab password"
echo -e "\nrun jupyter: \n\tjupyter-lab --ip=0.0.0.0 --no-browser --allow-root --notebook-dir=\"~/jupyter\""
