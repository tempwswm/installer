#!/bin/bash

#前置
apt install git -y

#comfyui
git clone https://github.com/comfyanonymous/ComfyUI.git 
cd ComfyUI


#配置环境
#安装uv
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env
#虚拟环境
uv venv -p 3.10
source .venv/bin/activate
#安装运行库
uv pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121
uv pip install -r requirements.txt
uv pip install pip

#安装节点管理器
git clone https://github.com/ltdrdata/ComfyUI-Manager.git custom_nodes/ComfyUI-Manager
uv pip install -r custom_nodes/ComfyUI-Manager/requirements.txt

#opencv依赖
apt-get install libxrender1 libxtst6 libxi6 -y

#用到的节点库
git clone https://github.com/yolain/ComfyUI-Easy-Use custom_nodes/ComfyUI-Easy-Use
uv pip install -r custom_nodes/ComfyUI-Easy-Use/requirements.txt
git clone https://github.com/daniabib/ComfyUI_ProPainter_Nodes custom_nodes/ComfyUI_ProPainter_Nodes
uv pip install -r custom_nodes/ComfyUI_ProPainter_Nodes/requirements.txt
git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite custom_nodes/ComfyUI-VideoHelperSuite
uv pip install -r custom_nodes/ComfyUI-VideoHelperSuite/requirements.txt
git clone https://github.com/cubiq/ComfyUI_essentials.git custom_nodes/ComfyUI_essentials
uv pip install -r custom_nodes/ComfyUI_essentials/requirements.txt
git clone https://github.com/evanspearman/ComfyMath.git custom_nodes/ComfyMath
uv pip install -r custom_nodes/ComfyMath/requirements.txt
git clone https://github.com/kijai/ComfyUI-KJNodes.git custom_nodes/ComfyUI-KJNodes
uv pip install -r custom_nodes/ComfyUI-KJNodes/requirements.txt
git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts custom_nodes/ComfyUI-Custom-Scripts
uv pip install -r custom_nodes/ComfyUI-Custom-Scripts/requirements.txt


#   python main.py --max-upload-size 2000 --listen 0.0.0.0
