
-- ЗАДАНИЕ 2

create database if not exists example;
use example;

drop table IF exists users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) not null unique
);

insert into users values
(default, 'Иван Иванов'),
(default, 'Петр Петров');

select * from users;

-- ЗАДАНИЕ 3
/*
ubudb@ubudb-VirtualBox:~$ mysqldump EXAMPLE > example.sql
ubudb@ubudb-VirtualBox:~$ mysql -e "CREATE DATABASE sample"
ubudb@ubudb-VirtualBox:~$ mysql sample < example.sql
ubudb@ubudb-VirtualBox:~$ mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 18
Server version: 8.0.22-0ubuntu0.20.04.3 (Ubuntu)

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| EXAMPLE            |
| information_schema |
| mysql              |
| performance_schema |
| sample             |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

*/