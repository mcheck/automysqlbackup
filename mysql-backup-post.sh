
find /Users/Shared/backups/mysql* -f  | exec chown root:admin {} && chmod 740 \
find /Users/Shared/backups/mysql* -d  | exec chown root:admin {} && chmod 770 \
