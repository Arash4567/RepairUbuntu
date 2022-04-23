#!/bin/sh
#1. Update & Upgrade latest package
echo "Updating & Upgrading latest package"
sudo apt-get update && sudo apt-get upgrade -y

#2. Install snap package manager
echo "Installing snap package manager"
sudo apt-get install snapd -y

#3. Install telegram-desktop latest version
echo "Installing telegram-desktop latest version"
sudo snap install telegram-desktop

#4. Openjdk-11
echo "Installing Java & Openjdk-11"
sudo apt install openjdk-11-jdk -y

#5. Nodejs lts
echo "Installing NodeJS LTS version"
sudo apt install npm -y
sudo apt-get install nodejs -y
sudo apt install apt-transport-https curl wget -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
npm cache clean -f
sudo npm install -g n
sudo n stable

#6. Scala sbt
echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list
echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add
sudo apt-get update
sudo apt-get install sbt -y

#7. Postgre SQL
echo "Installing Postgre SQL"
sudo apt update
sudo apt install postgresql postgresql-contrib -y

#8. GIT
echo "Installing Git"
sudo apt update
sudo apt install git -y

#9. Docker
echo "Installing Docker"
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker-ce
sudo usermod -aG docker ${USER}

#10. Docker Compose
echo "Installing Docker Compose"
sudo apt install docker-compose -y

# Check all installing package
echo "Well done! Congratulation all package install successfully! Happy programming! ;)"
echo "Checking all install package"
sudo apt-get update && sudo apt-get upgrade -y
snap --version
echo "Successfully installed Snap Package Manager"
java --version
echo "Successfully installed Java"
nodejs -v
echo "Successfully installed NodeJS"
npm -v
echo "Successfully installed NPM"
psql --version
echo "Successfully installed PostgreSQL"
