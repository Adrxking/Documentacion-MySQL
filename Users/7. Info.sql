-- Get default max user connections at the same time with the same user --
SHOW VARIABLES LIKE ‘max_user_connections’;

-- Get the info of how an user was made --
SHOW CREATE USER CURRENT_USER();
SHOW CREATE USER 'adrian'@'localhost';

-- Get user hashed password --
SELECT user,authentication_string FROM mysql.user;