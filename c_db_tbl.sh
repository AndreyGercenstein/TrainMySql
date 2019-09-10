#!/bin/bash
cnt=1
if [ "$#" != "6" ]; then
echo -e "You should set 6 parametres: \n\$1 = Mysql Username , \n\$2 = database name, \n\$3 = password for mysql user.\n\$4 = Mysql Usernamedump , \n\$5 = database namedump, \n\$6 = password for mysql userdump.\nFor example, you can run this:\ncreatedatabase.sh user database password userdump databasedump passworddump " 1>&2
exit 1
fi
dbuser=$1
dbname=$2
dbpassword="$3"
dbuserdump=$4
dbnamedump=$5
dbpassworddump="$6"
dbdir="/var/lib/mysql"

echo "database directory to check: $dbdir"
if [ "$(sudo ls $dbdir| grep -c $dbname)" = "1" ]; then
echo -e "Database exist\nChoose another name for your database.\n\n" && exit
else
echo "Creating database..."
mysql -e "CREATE DATABASE \`$dbname\`;"
echo -e "\n"
echo "CREATE TABLE users"
mysql -e "CREATE TABLE \`$dbname\`.users ( id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, name VARCHAR(250) NOT NULL);"
echo -e "\n"
echo "DESCRIBE TABLE users"
mysql -e "DESCRIBE \`$dbname\`.users"
echo "INSERT TABLE users"
echo -e "\n"
while [ $cnt != 100 ]; do
	mysql -e "INSERT INTO \`$dbname\`.users VALUES(null, 'user$cnt')"
	cnt=$[$cnt+1]
done
echo `mysql -e "SELECT COUNT(*) as 'INSERT_COUNT_ROWS=' FROM $dbname.users;"`

echo -e "\n"
echo "create dump database.sql"
mysqldump -u root --password=$dbpassword $dbname > database.sql
fi

echo "databasedump directory to check: $dbdir"
if [ "$(sudo ls $dbdir| grep -c $dbnamedump)" = "1" ]; then
echo "deploy dump database.sql to $dbnamedump"
mysqldump -u root --password=$dbpassworddump $dbnamedump < database.sql
else
echo "Creating databasedump..."
mysql -e "CREATE DATABASE \`$dbnamedump\`;"
echo "deploy dump database.sql to $dbnamedump"
mysqldump -u root --password=$dbpassworddump $dbnamedump < database.sql
fi


