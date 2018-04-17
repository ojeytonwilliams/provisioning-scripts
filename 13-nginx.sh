# apache2ctl stop
# might be necessary to stop apache during installation unless it's using a different port (ngnix does 80 and 443 by
# default)
sudo apt-get install nginx
sudo ufw allow 'Nginx HTTPS'
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh

# Note, if you don't do this and lock yourself out like an idiot, use
# ssh -o PubkeyAuthentication=no -o IdentitiesOnly=yes <console login details>
# with the details provided by the VPS provider (ramnode lets you in via temporary)
# backdoors if you mess up).  NOTE: this means your server is only as secure as
# your https://vpscp.ramnode.com account, so keep that safe.

# Also, *probably* should change the nginx.conf from
# /run/nginx.pid to /var/run/nginx.pid (not sure though)

# need to set up a ghost user and use that to run
# ghost install NOTE: BEFORE running this use
# uname 0022
