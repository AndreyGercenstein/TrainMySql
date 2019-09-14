#!/bin/bash
if [ "$#" != "3" ]; then
echo -e "You should set 3 parameters: \n\$1 = username\n\$2 = password for mysql user \n\$3 = count rows" 1>&2
exit 1
fi
username=$1
password=$2
count=$3
echo "create dump help_keyword limit $count rows"
mysqldump -u $username --password=$password --opt --where="1 limit 100" mysql help_keyword > help_keyword_100_rows.sql

