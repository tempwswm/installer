#!/bin/bash

#前置
apt install git -y

#comfyui
git clone https://github.com/comfyanonymous/ComfyUI.git && cd ComfyUI


#配置环境
#安装uv
curl -LsSf https://astral.sh/uv/install.sh | sh
#虚拟环境
uv venv -p 3.10
source .venv/bin/activate
#安装运行库
uv pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121
uv pip install -r requirements.txt
uv pip install pip

#安装节点管理器
cd custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
cd ..

#ComfyUI_ProPainter
cd custom_nodes
git clone https://github.com/daniabib/ComfyUI_ProPainter_Nodes
uv pip install -r requirements.txt
apt-get install libxrender1 libxtst6 libxi6
cd ..
