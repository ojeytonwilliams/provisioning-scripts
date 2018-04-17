# IMPORTANT NOTE: it may well be necessary to set umask 0022 at the beginning, before installing node
# SECOND NOTE: it might also be necessary to make all the js inside versions readable by everyone (eww)


# first create a ghost user (not called ghost!) then install node as follows (it needs to be this way because
# $NVM_DIR is getting set by the first user (idk why))
# su that-user
# cd ~/
# git clone https://github.com/nvm-sh/nvm.git .nvm
# cd .nvm
# git checkout v0.34.0
# . nvm.sh

# Add the following to .bashrc
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# umask 0022
# is necessary before running ghost install
# because they assume that and create the acme-challenge
# with root ownership and default permissions (i.e.
# 0027 on my machine!)


npm install ghost-cli@latest -g

# NOTE: Is it necessary to have the ghost directory user:group be ghost-username:ghost-username ?  Can't we do
# ghost-username:nginx or something?


