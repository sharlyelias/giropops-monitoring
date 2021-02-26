echo "#################################################
#######                                 #########
####### INSTALANDO PACOTES NECESSARIOS  #########
#######                                 #########
#################################################"
sudo apt-get install curl vim git -y

echo "#################################################
#######                                 #########
####### INSTALANDO DOCKER               #########
#######                                 #########
#################################################"
curl -fsSL https://get.docker.com | bash

echo "#################################################
#######                                 #########
####### INSTALANDO NETDATA              #########
#######                                 #########
#################################################"
bash <(curl -Ss https://my-netdata.io/kickstart.sh) --dont-wait


echo "#################################################
#######                                 #########
####### INICIANDO DOCKER  SWARM         #########
#######                                 #########
#################################################"
git clone https://github.com/sharlyelias/giropops-monitoring.git
sudo cp -r giropops-monitoring/* .
sudo docker swarm init --advertise-addr 192.168.99.140