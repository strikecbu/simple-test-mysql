# simple-test-mysql

Run script to test mysql connection:

``
docker run -e "DB_HOST=your host name" -e DB_PORT=3306 -e DB_USER=your-user -e DB_PASSWORD=your-password --rm --name testsql andychentw/test-mysql-connection
``
