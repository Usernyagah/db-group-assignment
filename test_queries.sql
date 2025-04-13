-- test_queries.sql
-- Basic Data Verification
SELECT 'CUSTOMERS' AS test, COUNT(*) AS count FROM customer;
SELECT 'BOOKS' AS test, COUNT(*) AS count FROM book;
SELECT 'ORDERS' AS test, COUNT(*) AS count FROM cust_order;

-- Data Checks
SELECT 'Cities' AS test, city, COUNT(*) AS addresses 
FROM address 
GROUP BY city;

SELECT 'Authors' AS test, a.first_name, a.last_name, b.title
FROM author a
JOIN book_author ba ON a.author_id = ba.author_id
JOIN book b ON ba.book_id = b.book_id;

-- Sales Analysis
SELECT 'Top Selling Books' AS test, b.title, SUM(ol.quantity) AS total_sold
FROM order_line ol
JOIN book b ON ol.book_id = b.book_id
GROUP BY b.title
ORDER BY total_sold DESC
LIMIT 3;

-- Order Status Check
SELECT 'Order Statuses' AS test, os.status_name, COUNT(*) AS order_count
FROM order_history oh
JOIN order_status os ON oh.status_id = os.status_id
GROUP BY os.status_name;

-- Inventory Check
SELECT 'Books by Language' AS test, bl.language_name, COUNT(*) AS book_count
FROM book b
JOIN book_language bl ON b.language_id = bl.language_id
GROUP BY bl.language_name;

-- Customer Activity
SELECT 'Active Customers' AS test, 
    c.first_name, 
    c.last_name, 
    COUNT(o.order_id) AS order_count
FROM customer c
LEFT JOIN cust_order o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY order_count DESC;

-- Data Integrity Checks
SELECT 'Orphaned Records' AS test,
    (SELECT COUNT(*) FROM book_author ba 
     LEFT JOIN book b ON ba.book_id = b.book_id 
     WHERE b.book_id IS NULL) AS author_without_book,
    (SELECT COUNT(*) FROM order_line ol 
     LEFT JOIN book b ON ol.book_id = b.book_id 
     WHERE b.book_id IS NULL) AS orderline_without_book;