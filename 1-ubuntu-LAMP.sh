sudo apt-get update
sudo apt-get install software-properties-common git apache2 -y
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-apache
sudo apachectl -k stop
sudo a2enmod unique_id expires
sudo apt-get install libapache2-mod-qos libapache2-mod-fcgid -y
sudo a2dismod mpm_event mpm_prefork
sudo a2enmod mpm_worker
sudo apt-get install mysql-server -y
sudo mysql_secure_installation 
sudo apt-get install php php-mysql php-fpm -y
sudo a2enmod proxy-fcgi
sudo a2enconf php7.2-fpm
sudo apachectl -k start

