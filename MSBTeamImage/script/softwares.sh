su -c "sudo mkdir -p /opt/java8_MSB/jdk8_MSB"
su -c "yum install wget -y"
su -c "yum install echo -y"
su -c "sudo yum install source -y"



su -c "sudo wget --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.tar.gz"
su -c  "sudo chmod +x 775 jdk-8u102-linux-x64.tar.gz"
su -c "sudo tar -xvf jdk-8u102-linux-x64.tar.gz"
su -c "sudo mv jdk1.8.0_102 /opt/java8_MSB/jdk8_MSB/"
su -c "sudo alternatives --install /usr/bin/java java /opt/java8_MSB/jdk8_MSB/jdk1.8.0_102/bin/java 2"
su -c "sudo alternatives --install /usr/bin/jar jar /opt/java8_MSB/jdk8_MSB/jdk1.8.0_102/bin/jar 2"
su -c "sudo alternatives --install /usr/bin/javac javac /opt/java8_MSB/jdk8_MSB/jdk1.8.0_102/bin/javac 2"
su -c "sudo alternatives --set jar /opt/java8_MSB/jdk8_MSB/jdk1.8.0_102/bin/jar"
su -c "sudo alternatives --set javac /opt/jdk1.8.0_102/bin/javac"



su -c "sudo echo 'export JAVA_HOME=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102'  >> ~/.bash_profile"
su -c "sudo echo 'export JRE_HOME=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/jre' >> ~/.bash_profile"
su -c "sudo echo 'export PATH=$PATH:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/bin:./opt/java/8MSB/jdk8_MSB/jdk1.8.0_102/jre:$HOME/bin' >> ~/.bash_profile"
su -c "sudo echo 'export CLASSPATH=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/lib'  >> ~/.bash_profile"


su -c "sudo echo 'export JAVA_HOME=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102'  >> ~/.bashrc"
su -c "sudo echo 'export JRE_HOME=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/jre' >> ~/.bashrc"
su -c "sudo echo 'export PATH=$PATH:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/bin:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/jre:$HOME/bin' >> ~/.bashrc"
su -c "sudo echo 'export CLASSPATH=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/lib'  >> ~/.bashrc"
su -c "sudo source ~/.bashrc"

su -c "sudo echo 'export JAVA_HOME=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102'  >> /etc/profile"
su -c "sudo echo 'export JRE_HOME=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/jre/bin/java' >> /etc/profile"
su -c "sudo echo 'export PATH=$PATH:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/bin:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/jre:$HOME/bin'  >> /etc/profile"
su -c "sudo echo 'export CLASSPATH=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/lib'  >> /etc/profile"
su -c "sudo source ~/.bash_profile"



su -c "sudo mkdir -p /apache/softwares/apache8"
su -c "yum install wget -y"
su -c "sudo wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.4/bin/apache-tomcat-8.5.4.tar.gz"

su -c "yum install tar -y"
su -c "yum install sed -y"



su -c "sudo tar -xvzf apache-tomcat-8.5.4.tar.gz"
su -c "sudo mv apache-tomcat-8.5.4 /apache/softwares/apache8"
su -c "sudo chmod -R 775 ./apache-tomcat-8.5.4.tar.gz/bin/*.sh"
su -c "sudo chmod +x ./apache/softwares/apache8/apache-tomcat-8.5.4/lib/.jar"
su -c "sudo chmod -R 775 ./apache-tomcat-8.5.4.tar.gz/conf/*.xml"


su -c "sudo groupadd tomcat"
su -c "sudo useradd miracle -g tomcat -s /bin/bash"
su -c "sudo cd /apache/softwares/apache8/apache-tomcat-8.5.4/bin/"
su -c "sudo firewall-cmd --add-port=8080/tcp --permanent"
su -c "sudo systemctl restart firewalld"



su -c "echo 'export JAVA_HOME=/opt/java8MSB/jdk8_MSB/jdk1.8.0_102'  >> /.bash_profile"
su -c "echo 'export CLASSPATH=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/lib'  >> /.bash_profile"
su -c "echo 'export CLASSPATH=$CLASSPATH:./apache/softwares/apache8/apache-tomcat-8.5.4/lib'  >> /.bash_profile"

su -c "echo 'export CATALINA_HOME=./apache/softwares/apache8/apache-tomcat-8.5.4'  >> /.bash_profile"

su -c "sudo echo 'export PATH=$PATH:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/bin:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/jre:./apache/softwares/apache8/apache-tomcat-8.5.4/bin/:$HOME/bin' >> ~/.bash_profile"
su -c "sudo ~/.bash_profile"


su -c " echo 'export JAVA_HOME=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102'  >> ~/.bashrc"
su -c " echo 'export CLASSPATH=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/lib'  >> ~/.bashrc"
su -c "echo 'export  CLASSPATH=$CLASSPATH:./apache/softwares/apache8/apache-tomcat-8.5.4/lib'  >> ~/.bashrc"

su -c " echo 'export CATALINA_HOME=./apache/softwares/apache8/apache-tomcat-8.5.4'  >> /.bashrc"
su -c "sudo echo 'export PATH=$PATH:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/bin:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/jre:./apache/softwares/apache8/apache-tomcat-8.5.4/bin:$HOME/bin' >> ~/.bashrc"
su -c "sudo ~/.bashrc" 

su -c " echo 'export JAVA_HOME=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102'  >> /etc/profile"
su -c " echo 'export CLASSPATH=./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/lib'  >> /etc/profile"
su -c "echo 'export CLASSPATH=$CLASSPATH:./apache/softwares/apache8/apache-tomcat-8.5.4/lib'  >> /etc/profile"
su -c "echo 'export CATALINA_HOME=./apache/softwares/apache8/apache-tomcat-8.5.4'  >> /etc/profile"
su -c "sudo echo 'export PATH=$PATH:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/bin:./opt/java8MSB/jdk8_MSB/jdk1.8.0_102/jre:./apache/softwares/apache8/apache-tomcat-8.5.4/bin:$HOME/bin' >> /etc/profile"
su -c "sudo /etc/profile" 
su -c "unset CATALINA_HOME"



su -c "sed 's/port=\"8080\"/port=\"8085\"/g' /apache/softwares/apache8/apache-tomcat-8.5.4/conf/server.xml"


  