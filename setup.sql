-- create the databases
CREATE DATABASE IF NOT EXISTS wordpress;

-- create the users for each database
CREATE USER 'mywp'@'%' IDENTIFIED BY 'xx11223XX@';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `wordpress`.* TO 'mywp'@'%';

FLUSH PRIVILEGES;