sudo apt-get install npm nodejs curl
sudo ln -s /usr/bin/nodejs /usr/bin/node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install 8.9.4 # stable version at time of writing.
