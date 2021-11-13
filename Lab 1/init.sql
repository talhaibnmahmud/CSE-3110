BEGIN
-- Show the logged in User
SHOW USER;

-- Change the DB container
SHOW con_name;
ALTER SESSION SET container=XEPDB1;
SHOW con_name;

-- Create user
CREATE USER talha IDENTIFIED BY 1707057;
GRANT ALL PRIVILEGES TO talha;

-- Connect to user

-- sqlplus talha@localhost/XEPDB1
CONNECT talha;
SHOW USER;
END;