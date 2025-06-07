
-- a. SELECT, WHERE, ORDER BY, GROUP BY

-- 1. Get all customers from New York, ordered by name
SELECT * FROM Customers
WHERE city = 'New York'
ORDER BY name;

-- 2. Count of orders per customer
SELECT c.name, COUNT(o.order_id) AS order_count
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- b. JOINS (INNER, LEFT, RIGHT)

-- 3. INNER JOIN: Orders with customer names
SELECT o.order_id, o.order_date, c.name
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id;

-- 4. LEFT JOIN: All customers and their orders (if any)
SELECT c.name, o.order_id, o.total_amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- 5. RIGHT JOIN equivalent using LEFT JOIN (SQLite does not support RIGHT JOIN)
-- This mimics RIGHT JOIN by switching table order
SELECT o.order_id, o.total_amount, c.name
FROM Orders o
LEFT JOIN Customers c ON o.customer_id = c.customer_id;

-- c. Subqueries

-- 6. Customers who spent more than average order total
SELECT name FROM Customers
WHERE customer_id IN (
    SELECT customer_id FROM Orders
    GROUP BY customer_id
    HAVING SUM(total_amount) > (
        SELECT AVG(total_amount) FROM Orders
    )
);

-- d. Aggregate Functions

-- 7. Total revenue per product category
SELECT p.category, SUM(oi.quantity * p.price) AS revenue
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.category;

-- 8. Average quantity per product sold
SELECT p.name, AVG(oi.quantity) AS avg_quantity
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name;

-- e. Create View

-- 9. View: Top selling products
CREATE VIEW IF NOT EXISTS TopSellingProducts AS
SELECT p.name, SUM(oi.quantity) AS total_sold
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC;

-- f. Optimize Queries with Indexes

-- 10. Indexes for performance optimization
CREATE INDEX IF NOT EXISTS idx_orders_customer_id ON Orders(customer_id);
CREATE INDEX IF NOT EXISTS idx_orderitems_product_id ON OrderItems(product_id);
