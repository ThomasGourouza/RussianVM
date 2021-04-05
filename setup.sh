echo "Installing docker..."
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo rm get-docker.sh
echo "Installing docker-compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "End of installing docker and docker-compose"
cd /vagrant
echo "Running docker-compose..."
sudo docker-compose up -d
echo "Installation completed!"
echo "Now, go to http://localhost:4200 (or http://127.0.0.1:4200) and enjoy :)"