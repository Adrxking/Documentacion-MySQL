-- Lock or Unlock Users --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' ACCOUNT <LOCK/UNLOCK>;

-- Require SSL to users --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' REQUIRE SSL;

-------------------
--- LIMIT USERS ---
-------------------
-- Limit max queries per hour --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' WITH MAX_QUERIES_PER_HOUR 10;
-- Limit max updates per hour --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' WITH MAX_UPDATES_PER_HOUR 10;
-- Limit max connections per hour --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' WITH MAX_CONNECTIONS_PER_HOUR 10;
-- Limit max user connections at the same time --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' WITH MAX_USER_CONNECTIONS 10;



-------------------
-- Authentication -
-------------------
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian'; -- Here you write the password not hashed
CREATE USER 'adrian'@'localhost' IDENTIFIED BY PASSWORD 'hash_adrian'; -- Here you write the password hashed
CREATE USER 'adrian'@'localhost' IDENTIFIED WITH mysql_native_password BY 'adrian'; -- Same that IDENTIFIED BY
CREATE USER 'adrian'@'localhost' IDENTIFIED WITH mysql_native_password AS 'hash_adrian'; -- Same that IDENTIFIED BY PASSWORD

-- Expire the password after first login of the User --
CREATE USER 'adrian'@'localhost' IDENTIFIED BY 'adrian' PASSWORD EXPIRE;

-- Allow user login just from a range of IP --
CREATE USER 'adrian'@'192.168.0.0/255.255.0.0' IDENTIFIED BY 'adrian';