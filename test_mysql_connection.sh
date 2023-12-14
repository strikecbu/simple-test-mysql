#!/bin/bash

# 使用傳入的環境變數
#DB_HOST=$1
#DB_PORT=$2
#DB_USER=$3
#DB_PASSWORD=$4

# 測試 MySQL 連線
echo "DB_HOST=$DB_HOST"
echo "DB_PORT=$DB_PORT"
echo "DB_USER=$DB_USER"
echo "DB_PASSWORD=$DB_PASSWORD"

# 測試domain
dig $DB_HOST

mysql -h $DB_HOST -P $DB_PORT -u $DB_USER -p"$DB_PASSWORD" -e "SELECT 'MySQL connection successful';"
