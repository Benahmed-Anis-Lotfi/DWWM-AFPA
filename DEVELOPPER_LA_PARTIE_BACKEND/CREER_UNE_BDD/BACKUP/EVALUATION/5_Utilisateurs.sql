-- EVALUATION -- Commandes via Terminal pour exécuter l'exercice 5 avec les erreurs et les manipulations de solutions --





benahmed@benahmed-ThinkStation-P320:~$ ssh root@localhost
ssh: connect to host localhost port 22: Connection refused
benahmed@benahmed-ThinkStation-P320:~$ mysql
ERROR 1045 (28000): Access denied for user 'benahmed'@'localhost' (using password: NO)
benahmed@benahmed-ThinkStation-P320:~$ mysql>
bash: erreur de syntaxe près du symbole inattendu « newline »
benahmed@benahmed-ThinkStation-P320:~$ sudo mysql -u root -p
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 1037
Server version: 10.5.12-MariaDB-0ubuntu0.21.04.1 Ubuntu 21.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> mysql
    -> CREATE USER 'marketing'@'localhost' IDENTIFIED BY '04'
    -> CREATE USER 'marketing'@'localhost' IDENTIFIED BY '04';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'mysql
CREATE USER 'marketing'@'localhost' IDENTIFIED BY '04'
CREATE USER 'mar...' at line 1
MariaDB [(none)]> CREATE USER 'marketing'@'localhost' IDENTIFIED BY '04';
Query OK, 0 rows affected (0.210 sec)

MariaDB [(none)]> CREATE ROLE 'gescom_marketing';
Query OK, 0 rows affected (0.019 sec)

MariaDB [(none)]> GRANT SELECT, INSERT, UPDATE, DELETE ON gescom_afpa.categories TO 'gescom_marketing';
Query OK, 0 rows affected (0.028 sec)

MariaDB [(none)]> GRANT SELECT, INSERT, UPDATE, DELETE ON gescom_afpa.products TO 'gescom_marketing';
Query OK, 0 rows affected (0.015 sec)

MariaDB [(none)]> GRANT SELECT ON gescom_afpa.orders TO 'gescom_marketing';
Query OK, 0 rows affected (0.016 sec)

MariaDB [(none)]> GRANT SELECT ON gescom_afpa.orders_details TO 'gescom_marketing';
Query OK, 0 rows affected (0.010 sec)

MariaDB [(none)]> GRANT SELECT ON gescom_afpa.customers TO 'gescom_marketing';
Query OK, 0 rows affected (0.015 sec)

MariaDB [(none)]> SHOW GRANTS TO 'gescom_marketing';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TO 'gescom_marketing'' at line 1
MariaDB [(none)]> SHOW GRANTS OF ROLE 'gescom_marketing';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'OF ROLE 'gescom_marketing'' at line 1
MariaDB [(none)]> GRANT 'gescom_marketing' TO 'marketing'@'localhost';
Query OK, 0 rows affected (0.011 sec)

MariaDB [(none)]> GRANT ALL ON phpmyadmin TO 'marketing'@'localhost';
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> GRANT ALL ON 'phpmyadmin' TO 'marketing'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''phpmyadmin' TO 'marketing'@'localhost'' at line 1
MariaDB [(none)]> GRANT ALL PRIVILEGES ON 'phpmyadmin' TO 'marketing'@'localhost
';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''phpmyadmin' TO 'marketing'@'localhost'' at line 1
MariaDB [(none)]> GRANT ALL PRIVILEGES ON 'phpmyadmin'.* TO 'marketing'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''phpmyadmin'.* TO 'markMariaDB [(none)]> ' at line 1
MariaDB [(none)]> GRANT ALL PRIVILEGES ON 'phpmyadmin'.* TO 'marketing'@'localhost';
MariaDB [(none)]> GRANT ALL PRIVILEGES ON 'phpmyadmin'.* TO 'marketing'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''phpmyadmin'.* TO 'marketing'@'localhost'' at line 1
MariaDB [(none)]> FLUSH PRIVILEGES
    -> GRANT ALL PRIVILEGES ON 'phpmyadmin'.* TO 'marketing'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'GRANT ALL PRIVILEGES ON 'phpmyadmin'.* TO 'marketing'@'localhost'' at line 2
MariaDB [(none)]> FLUSH PRIVILEGES GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'marketing'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'marketing'@'localhost'' at line 1
MariaDB [(none)]> GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'marketing'@'localhost';
Query OK, 0 rows affected (0.036 sec)

MariaDB [(none)]> GRANT 'gescom_marketing' TO 'marketing'@'localhost';
Query OK, 0 rows affected (0.000 sec)

MariaDB [(none)]> GRANT ROLE 'gescom_marketing' FOR 'marketing'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''gescom_marketing' FOR 'marketing'@'localhost'' at line 1
MariaDB [(none)]> GRANT ROLE FOR 'gescom_marketing' TO 'marketing'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FOR 'gescom_marketing' TO 'marketing'@'localhost'' at line 1
MariaDB [(none)]> GRANT SELECT, DELETE, UPDATE, INSERT  ON gescom_afpa.* TO 'marketing'@'localhost';
Query OK, 0 rows affected (0.013 sec)

MariaDB [(none)]> REVOKE SELECT, DELETE, UPDATE, INSERT  ON gescom_afpa.* TO 'marketing'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TO 'marketing'@'localhost'' at line 1
MariaDB [(none)]> REVOKE GRANT SELECT, DELETE, UPDATE, INSERT  ON gescom_afpa.* TO 'marketing'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SELECT, DELETE, UPDATE, INSERT  ON gescom_afpa.* TO 'marketing'@'localhost'' at line 1
MariaDB [(none)]> REVOKE GRANT SELECT, DELETE, UPDATE, INSERT  ON gescom_afpa.* FROM 'marketing'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SELECT, DELETE, UPDATE, INSERT  ON gescom_afpa.* FROM 'marketing'@'localhost'' at line 1
MariaDB [(none)]> REVOKE SELECT, DELETE, UPDATE, INSERT  ON gescom_afpa.* FROM 'marketing'@'localhost';
Query OK, 0 rows affected (0.015 sec)

MariaDB [(none)]> GRANT SELECT, DELETE, UPDATE, INSERT  ON gescom_afpa.categories TO 'marketing'@'localhost';
Query OK, 0 rows affected (0.014 sec)

MariaDB [(none)]> GRANT SELECT, DELETE, UPDATE, INSERT  ON gescom_afpa.products TO 'marketing'@'localhost';
Query OK, 0 rows affected (0.013 sec)

MariaDB [(none)]> GRANT SELECT  ON gescom_afpa.orders TO 'marketing'@'localhost';
Query OK, 0 rows affected (0.016 sec)

MariaDB [(none)]> GRANT SELECT  ON gescom_afpa.orders_details TO 'marketing'@'localhost';
Query OK, 0 rows affected (0.023 sec)

MariaDB [(none)]> GRANT SELECT  ON gescom_afpa.customers TO 'marketing'@'localhost';
Query OK, 0 rows affected (0.018 sec)

