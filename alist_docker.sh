sudo mkdir -p /opt/alist/data
sudo mkdir -p /root/alist/files
docker run -d --restart=always -v /opt/alist/data:/opt/alist/data -v /root/alist/files:/alist/files -p 5244:5244 -e PUID=0 -e PGID=0 -e UMASK=022 --name="alist" xhofe/alist:latest
