#!/usr/bin/env bash

# sudo this script to get everything into place, run from inside the dir

CURRDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DESTDIR="/usr/local"

# move the executable script into bin
sudo mkdir -p $DESTDIR/bin
sudo cp $CURRDIR/automysqlbackup.sh $DESTDIR/bin/
sudo chmod +x $DESTDIR/bin/automysqlbackup.sh

# move the config script into etc
sudo mkdir -p $DESTDIR/etc/automysqlbackup
sudo cp $CURRDIR/automysqlbackup.conf $DESTDIR/etc/automysqlbackup/
sudo chown -R root:admin $DESTDIR/etc/automysqlbackup
sudo chmod -R 740 $DESTDIR/etc/automysqlbackup