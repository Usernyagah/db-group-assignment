-- Basic Roles
CREATE ROLE IF NOT EXISTS 
  'admin', 
  'staff', 
  'customer';

-- Admin (Full access)
GRANT ALL PRIVILEGES ON bookstore_database.* TO 'admin';

-- Staff (Limited access)
GRANT SELECT, INSERT, UPDATE ON bookstore_database.* TO 'staff';
REVOKE DELETE ON bookstore_database.* FROM 'staff';

-- Customer (Read-only)
GRANT SELECT ON bookstore_database.book TO 'customer';
GRANT SELECT ON bookstore_database.cust_order TO 'customer';

-- Create User
CREATE USER 'nairobi_admin'@'%' IDENTIFIED BY 'Admin1234';
GRANT 'admin' TO 'nairobi_admin'@'%';

FLUSH PRIVILEGES;