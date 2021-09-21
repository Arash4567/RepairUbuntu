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

#4. BRAVE BROWSER
echo "Installing brave-browser"
sudo apt install apt-transport-https curl wget -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

#5. Openjdk-11
echo "Installing Java & Openjdk-11"
sudo apt install openjdk-11-jdk -y

#6. Nodejs lts
echo "Installing NodeJS LTS version"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install nodejs -y

#7. Yarn
echo "Installing yarn package manager"
sudo apt-get update && sudo apt-get install yarn -y

#8. Scala sbt
echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list
echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add
sudo apt-get update
sudo apt-get install sbt -y

#9. VS Code
echo "Installing VsCode"
sudo snap install --classic code

#10. Postgre SQL
echo "Installing Postgre SQL"
sudo apt update
sudo apt install postgresql postgresql-contrib -y

#10. Postgre SQL
echo "Installing Git"
sudo apt update
sudo apt install git wget -y

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
