-- Lock or Unlock Users --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' ACCOUNT <LOCK/UNLOCK>;

-- Require SSL to users --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' REQUIRE SSL;

-- Limits for Users --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' MAX_QUERIES_PER_HOUR 10;
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' MAX_UPDATES_PER_HOUR 10;
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' MAX_CONNECTIONS_PER_HOUR 10;
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' MAX_USER_CONNECTIONS 10;

-- Check process list --
SHOW PROCESSLIST;

-- Authentication --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian'; -- Here you write the password not hashed
CREATE USER 'adrian'@'localhost' IDENTIFIED BY PASSWORD 'adrian'; -- Here you write the password hashed
CREATE USER 'adrian'@'localhost' IDENTIFIED WITH mysql_native_password BY 'adrian'; -- Same that IDENTIFIED BY
CREATE USER 'adrian'@'localhost' IDENTIFIED WITH mysql_native_password AS 'hash_adrian'; -- Same that IDENTIFIED BY PASSWORD

-- Get user hashed password --
SELECT user,authentication_string FROM mysql.user;