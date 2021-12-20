-- Change password --
ALTER USER IF EXISTS 'adrian'@'localhost' IDENTIFIED BY 'new_adrian';

-- Change name --
RENAME USER 'adrian' TO 'new_adrian';

-- Delete user --
DROP USER IF EXISTS 'adrian'@'localhost';