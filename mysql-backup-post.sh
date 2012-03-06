
find /Users/Shared/backups/mysql* -f  | exec chown root:admin {} && chmod 740 \
find /Users/Shared/backups/mysql* -d  | exec chown root:admin {} && chmod 770 \

# chown root.root /var/backup/db* -R
# find /var/backup/db* -type f -exec chmod 400 {} \;
# find /var/backup/db* -type d -exec chmod 700 {} \;
