curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod u+x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp


sudo apt-get install libssh2–1-dev libssh2–1 -y
wget https://github.com/Sean-Der/pecl-networking-ssh2/archive/php7.zip
unzip php7.zip
cd pecl-networking-ssh2-php7
phpize
./configure
sudo make
sudo make install
sudo sh -c 'echo "extension=ssh2.so" > /etc/php/7.0/mods-available/ssh2.ini'
sudo phpenmod ssh2
sudo service php7.0-fpm restart 
