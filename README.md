AutoMySQLBackup
===============
A fork of the AutoMySQLBackup script from   http://sourceforge.net/projects/automysqlbackup/


There is no error checking on the install script.  
Run it multiple times and it will overwrite the files that are there.

Grant privileges SHOW DATABASES, SELECT, LOCK TABLES, RELOAD on *.* to 'backup'@'localhost' identified by 'someawesomepassword';

Install
-------

Run the installer, it will ask for sudo password
Installs into
	/usr/local/bin/automysqlbackup.sh
	/usr/local/etc/automysqlbackup/automysqlbackup.conf

Set the conf file
Start the launchd plist running: 


Change Log
----------

2012-03-05  
Forked script from SourceForge, version 2.5.1-01  
Added install script  
Added launchd script  
Added post-install script to change permissions on backed up dbs

