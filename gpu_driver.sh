curl -fSsL -O https://github.com/GoogleCloudPlatform/compute-gpu-installation/releases/download/cuda-installer-v1.1.0/cuda_installer.pyz
#安装驱动
#python3 cuda_installer.pyz install_driver
#安装cuda
python3 cuda_installer.pyz install_cuda
#验证cuda
python3 cuda_installer.pyz verify_cuda
#验证驱动
nvidia-smi
