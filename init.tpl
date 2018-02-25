sudo apt-get update
sudo apt-get install 	apt-transport-httpsi \
			ca-certificates \
			curl \
			software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo apt-get install docker-compose
sudo docker-compose up -d