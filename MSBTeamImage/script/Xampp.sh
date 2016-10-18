su -c "yum install wget -y"
su -c "sudo mkdir -p /xamppserversoftware/v7"

su -c "sudo mv xampp-linux-x64-7.0.9-1-installer.run /xamppserversoftware/v7"

su -c "yum install wget -y"
su -c "wget https://www.apachefriends.org/xampp-files/7.0.9/xampp-linux-x64-7.0.9-1-installer.run"
su -c "yum install chmod -y"
su -c "sudo chmod +x xampp-linux-x64-7.0.9-1-installer.run"
su -c "./xampp-linux-x64-7.0.9-1-installer.run"



