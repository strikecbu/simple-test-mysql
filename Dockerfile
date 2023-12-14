FROM ubuntu:20.04

WORKDIR /app

# 安裝 MySQL 客戶端
RUN apt-get update && apt-get install -y mysql-client

# 安裝 dnsutils 套件以包含 dig 工具
RUN apt-get install -y dnsutils

# 安裝 telnet 工具
# RUN apt-get install -y telnet

# 複製測試腳本
COPY test_mysql_connection.sh /app/

# 添加執行權限
RUN chmod +x /app/test_mysql_connection.sh

# 在容器啟動時執行腳本
CMD ["/app/test_mysql_connection.sh"]
