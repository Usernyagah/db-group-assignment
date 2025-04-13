-- Insert Kenya into country table
INSERT INTO country (name) VALUES ('Kenya');

-- Insert address statuses
INSERT INTO address_status (status_name) VALUES
('Active'),
('Inactive'),
('Previous');

-- Insert addresses
INSERT INTO address (street, city, state, postal_code, country_id) VALUES
('Moi Avenue', 'Nairobi', 'Nairobi County', '00100', 1),
('Kenyatta Street', 'Mombasa', 'Mombasa County', '80100', 1),
('Oginga Odinga Road', 'Kisumu', 'Kisumu County', '40100', 1),
('Kenyatta Avenue', 'Nakuru', 'Nakuru County', '20100', 1),
('Eldoret Highway', 'Eldoret', 'Uasin Gishu County', '30100', 1);

-- Insert customers
INSERT INTO customer (first_name, last_name, email) VALUES
('Wanjiru', 'Kamau', 'wanjiru.kamau@gmail.com'),
('Kipchoge', 'Keino', 'kipkeino@yahoo.com'),
('Amina', 'Mohamed', 'amina.m@example.co.ke'),
('Benson', 'Omondi', 'bensonomondi@hotmail.com'),
('Grace', 'Atieno', 'gatieno@outlook.com');

-- Link customers to addresses
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

-- Insert languages
INSERT INTO book_language (language_name) VALUES
('Swahili'),
('English'),
('Kikuyu'),
('Luo'),
('Kamba');

-- Insert publishers
INSERT INTO publisher (name) VALUES
('Longhorn Kenya'),
('East African Educational Publishers'),
('Kwani Trust'),
('Text Book Centre'),
('Jomo Kenyatta Foundation');

-- Insert authors
INSERT INTO author (first_name, last_name) VALUES
('Ngũgĩ', 'wa Thiong''o'),
('Grace', 'Ogot'),
('Meja', 'Mwangi'),
('Binyavanga', 'Wainaina'),
('Yvonne', 'Adhiambo Owuor');

-- Insert books
INSERT INTO book (title, isbn, publication_year, price, language_id, publisher_id) VALUES
('Petals of Blood', '978-0143039174', 1977, 1200.00, 2, 2),
('The River Between', '978-0435905484', 1965, 950.00, 2, 2),
('Weep Not, Child', '978-0143107361', 1964, 899.99, 2, 1),
('Dust', '978-0143107545', 2013, 1500.00, 2, 3),
('One Day I Will Write About This Place', '978-1555975913', 2011, 1350.00, 2, 4);

-- Link books to authors
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 5),
(5, 4);

-- Insert shipping methods
INSERT INTO shipping_method (method_name) VALUES
('Posta Kenya'),
('Sendy Courier'),
('Aramex'),
('In-store Pickup'),
('Bike Delivery');

-- Insert order statuses
INSERT INTO order_status (status_name) VALUES
('Pending'),
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled');

-- Insert sample orders
INSERT INTO cust_order (customer_id, shipping_method_id) VALUES
(1, 2),
(2, 1),
(3, 3),
(4, 5),
(5, 4);

-- Insert order lines
INSERT INTO order_line (order_id, book_id, quantity, price_each) VALUES
(1, 1, 2, 1200.00),
(1, 3, 1, 899.99),
(2, 2, 1, 950.00),
(3, 4, 3, 1500.00),
(4, 5, 1, 1350.00);

-- Insert order history
INSERT INTO order_history (order_id, status_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(5, 1);