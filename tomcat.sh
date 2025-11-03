yum install java-17-amazon-corretto -y
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.111/bin/apache-tomcat-9.0.106.tar.gz
tar -zxvf apache-tomcat-9.0.111.tar.gz
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-9.0.111/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-9.0.111/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="admin@123" roles="manager-gui, manager-script"/>' apache-tomcat-9.0.111/conf/tomcat-users.xml
sed -i '50  a\</tomcat-users>' apache-tomcat-9.0.111/conf/tomcat-users.xml
sed -i '3yy' apache-tomcat-9.0.111/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-9.0.111/webapps/manager/META-INF/context.xml
sed -i '2dd'  apache-tomcat-9.0.111/webapps/manager/META-INF/context.xml
sh apache-tomcat-9.0.111/bin/startup.sh
