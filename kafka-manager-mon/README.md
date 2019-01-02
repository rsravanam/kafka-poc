## Setup and usage for kafka cluster monitor on ubuntu
  
sudo apt install unzip  
sudo apt install nodejs  
sudo apt install npm  
sudo apt install openjdk-8*  
  
---
  
wget https://github.com/yahoo/kafka-manager/archive/1.3.3.22.tar.gz  
tar xzf kafka-manager-1.3.3.22.zip  
cd kafka-manager-1.3.3.22  
./sbt clean dist  
  
---
  
# After build  
  
unzip kafka-manager-1.3.3.22.zip  
cd kafka-manager-1.3.3.22  
bin/kafka-manager -Dconfig.file=conf/application.conf -Dhttp.port=8080  
