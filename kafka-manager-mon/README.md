## Setup and usage for kafka cluster monitor on ubuntu
  
sudo apt update -y  
sudo apt install npm -y  
sudo apt install unzip -y  
sudo apt install nodejs -y  
sudo apt install openjdk-8* -y  
  
---
# Build  
  
wget https://github.com/yahoo/kafka-manager/archive/1.3.3.22.tar.gz  
tar xzf 1.3.3.22.tar.gz  
cd kafka-manager-1.3.3.22  
./sbt clean dist  
  
---
  
# After build  
  
unzip target/universal/kafka-manager-1.3.3.22.zip
cd kafka-manager-1.3.3.22  
bin/kafka-manager -Dconfig.file=conf/application.conf -Dhttp.port=8080  
