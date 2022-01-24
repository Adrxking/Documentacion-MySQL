-- Check permissions --
SELECT * FROM mysql.user;

-- Global permissions of everything --
GRANT ALL PRIVILEGES ON *.* TO 'adrian'@'localhost';
-- Global permissions of Select --
GRANT SELECT ON *.* TO 'adrian'@'localhost';

-- Global permissions of give permissions --
GRANT CREATE TABLESPACE ON *.* TO 'adrian'@'localhost';

-- Global permissions of create user --
GRANT CREATE USER ON *.* TO 'adrian'@'localhost';

-- Revoke global permissions of Select --
REVOKE SELECT ON *.* FROM 'adrian'@'localhost';

-- Refresh privileges for update --
FLUSH PRIVILEGES;