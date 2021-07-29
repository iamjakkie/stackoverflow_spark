#! /bin/bash

echo "[i] Restart mysql with new settings"
/usr/sbin/mysqld --skip-grant-tables --skip-networking &

echo "[i] Setting up new power user credentials."
service mysql start $ sleep 10

echo "[i] Flush privileges"
mysql --user=root "FLUSH PRIVILEGES;"

echo "[i] Setting end,have fun."

exec "$@"