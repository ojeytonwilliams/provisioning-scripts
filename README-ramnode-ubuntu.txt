Run the various .sh files in order.  After the zeroth step, add a user via

adduser <name>
adduser <name> sudo

Then confirm that you can log in as that user and disable root logins by 
editing /etc/ssh/sshd_config.  FIRST OFF, ensure that the new user can log in by adding 
AllowUsers <name> 
below PermitRootLogin and change
PermitRootLogin yes 
to 
PermitRootLogin no

Having done this, restart the ssh service via
service ssh restart

BEFORE LOGGING OUT check you can log in with the non-root user (and that you can't log in with root)

Now run the LAMP script.  After it completes, if you want to tailor it to a small vps, add the apache-conf lines to the apache config (at /etc/apache2/apache2.conf), after backing up. Similarly, the mysql server can be contrained by changing settings to those in mysql-conf-changes.cnf.

If you want to protect the server from slow loris (you probably do) replace qos.conf (etc/apache2/mods-available) with the qos.conf here

ALSO, follow the security advice in 
https://stribika.github.io/2015/01/04/secure-secure-shell.html

ALSO ALSO, once you've copied over a nice secure ssh key, edit /etc/ssh/sshd_config so that it doesn't accept passwords.  Make ABSOLUTELY sure you have backed up the ssh key in at least two places.  Dropbox + local machine at the bare minimum.  Oh, and it should have a decent password that takes a little while to turn into a key i.e. set -a=n, where n is just small enough that it's not annoying!
