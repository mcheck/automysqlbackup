AutoMySQLBackup
===============
A fork of the AutoMySQLBackup script from   http://sourceforge.net/projects/automysqlbackup/

There is no error checking on the install script.  
Run it multiple times and it will overwrite files that are there.

Includes a plist for automatic execution under launchd.  So, obviously this is osx specific.


Install
-------

Setup a mysql backup user:

	Grant privileges SHOW DATABASES, SELECT, LOCK TABLES, RELOAD on *.* to 'backup'@'localhost' identified by 'someawesomepassword';

Run the installer, it will ask for sudo password

Installs into

	/usr/local/bin/automysqlbackup.sh
	/usr/local/etc/automysqlbackup/automysqlbackup.conf

Adjust settings in automysqlbackup.conf

Start the launchd plist running:  

	sudo launchctl load /Library/LaunchDaemons/com.sologroup.automysqlbackup.plist


Notes
-----
launchd plist is runs daily at 11:50pm



Todo
----
Update the mysql-post script to set permissions on the databases, less permissive  
Add an un-install script  
Remove the PATH variable from the automysqlbackup.sh and place it in the conf file so as to allow it to be configured



Change Log
----------

2012-03-05  
Forked script from SourceForge, version 2.5.1-01  
Added install script  
Added launchd script  
Added post-install script to change permissions on backed up dbs

2012-05-25  
Clarified some items in README
