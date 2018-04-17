git clone -b 3.14.0 https://github.com/logrotate/logrotate.git
cd logrotate
autoreconf -fiv && ./configure && make
sudo cp logrotate /usr/sbin
sudo chmod 755 /usr/sbin/logrotate
cd ..
rm -rf logrotate
