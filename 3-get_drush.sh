wget -O drush.phar https://github.com/drush-ops/drush-launcher/releases/download/0.5.1/drush.phar
chmod +x drush.phar
sudo mv drush.phar /usr/local/bin/drush
sudo drush self-update
