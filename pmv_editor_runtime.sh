sudo apt update
sudo apt install -y python3-pip rubberband-cli ffmpeg
sudo apt clean
pip3 --no-cache-dir install moviepy pygame Pillow matplotlib pyrubberband jupyter spleeter
pip3 --no-cache-dir install jupyter_contrib_nbextensions jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable
jupyter nbextensions_configurator install
jupyter contrib nbextension install
mkdir ~/jupyter
echo -e "\n\nset passed: \n\tjupyter notebook password"
echo -e "\nrun jupyter: \n\tjupyter notebook  --ip=0.0.0.0 --no-browser --allow-root --notebook-dir=\"~/jupyter\""
