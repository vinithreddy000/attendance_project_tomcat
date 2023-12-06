#!/bin/bash

# Create tomcat user
sudo useradd -m -d /opt/tomcat -U -s /bin/false tomcat

# Install Java
sudo apt update
sudo apt install -y default-jdk

# Download and extract Tomcat
cd /tmp
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.83/bin/apache-tomcat-9.0.83.tar.gz
sudo tar xzvf apache-tomcat-9*tar.gz -C /opt/tomcat --strip-components=1


# Set permissions
sudo chown -R tomcat:tomcat /opt/tomcat/
sudo chmod -R u+x /opt/tomcat/bin


#install git 
sudo apt install -y git
#create folder to clone repo
sudo mkdir /tmp/git
cd /tmp/git
sudo git init
sudo git clone https://github.com/vinithreddy000/attendance_project_tomcat.git
sudo cd attendance_project_tomcat



# Configure tomcat-users.xml
sudo sed -i -e '/<\/tomcat-users>/i \
<role rolename="manager-gui" /> \
<user username="manager" password="1234" roles="manager-gui" /> \
 \
<role rolename="admin-gui" /> \
<user username="admin" password="1234" roles="manager-gui,admin-gui" />' /opt/tomcat/conf/tomcat-users.xml


# Configure context.xml for manager app
sudo cp /tmp/git/attendance_project_tomcat/tomcat/context.xml /opt/tomcat/webapps/manager/META-INF/context.xml 

# Configure context.xml for host-manager app
sudo cp /tmp/git/attendance_project_tomcat/tomcat/context.xml  /opt/tomcat/webapps/host-manager/META-INF/context.xml 

# Configure Tomcat as a service
sudo update-java-alternatives -l
sudo cp /tmp/git/attendance_project_tomcat/tomcat/tomcat.service /etc/systemd/system/tomcat.service 

#install authbind
sudo apt-get install authbind

#configure port80 and port 443
sudo touch /etc/authbind/byport/80
sudo touch /etc/authbind/byport/443
sudo chown tomcat:tomcat /etc/authbind/byport/80 /etc/authbind/byport/443
sudo chmod 500 /etc/authbind/byport/80 /etc/authbind/byport/443

#update the server.xml file 
sudo cp /tmp/git/attendance_project_tomcat/tomcat/server.xml /opt/tomcat/conf/server.xml

#configureing user 
sudo tee /etc/default/tomcat9 <<EOF
tomcat=tomcat
EOF


#copy files from. to conf

sudo cp /tmp/git/attendance_project_tomcat/sslcert/domain-crt.crt /tmp/git/attendance_project_tomcat/sslcert/private.pem /opt/tomcat/conf/


# Reload systemd
sudo systemctl daemon-reload

#change the root page of tomcat 

cd /opt/tomcat/webapps

sudo mv ROOT home
sudo mkdir ROOT
cd ROOT

sudo cp /tmp/git/attendance_project_tomcat/application_data/Webapps/ROOT/* /opt/tomcat/webapps/ROOT/ 
# Start and enable Tomcat service
sudo systemctl start tomcat
sudo systemctl restart tomcat
sudo systemctl enable tomcat
