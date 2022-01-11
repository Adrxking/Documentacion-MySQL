-- Check permissions --
SELECT * FROM mysql.user;

-- Global permissions of Select --
GRANT SELECT ON *.* TO 'adrian'@'localhost';

-- Global permissions of give permissions --
GRANT CREATE TABLESPACE ON *.* TO 'adrian'@'localhost';

-- Revoke global permissions of Select --
REVOKE SELECT ON *.* FROM 'adrian'@'localhost';

