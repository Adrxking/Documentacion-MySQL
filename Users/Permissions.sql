-- Check permissions --
select * from mysql.user;

-- Global permissions of Select --
GRANT SELECT ON *.* to 'adrian'@'localhost';

-- Global permissions of give permissions --
GRANT CREATE TABLESPACE ON *.* TO 'adrian'@'localhost';
