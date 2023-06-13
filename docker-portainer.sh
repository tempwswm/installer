curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
#sudo groupadd docker
sudo usermod -aG docker ${USER}
sudo systemctl restart docker

docker volume create portainer_data
docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
