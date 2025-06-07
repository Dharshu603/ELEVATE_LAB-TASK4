
-- CREATE TABLES
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    city TEXT
);

CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date TEXT,
    total_amount REAL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    name TEXT,
    category TEXT,
    price REAL
);

CREATE TABLE OrderItems (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- INSERT DATA
INSERT INTO Customers VALUES
(1, 'Alice Smith', 'alice@example.com', 'New York'),
(2, 'Bob Johnson', 'bob@example.com', 'Los Angeles'),
(3, 'Charlie Rose', 'charlie@example.com', 'Chicago'),
(4, 'David Lee', 'david@example.com', 'Houston');

INSERT INTO Products VALUES
(101, 'Smartphone', 'Electronics', 699.99),
(102, 'Laptop', 'Electronics', 999.99),
(103, 'Desk Chair', 'Furniture', 120.00),
(104, 'Book - SQL Basics', 'Books', 25.00);

INSERT INTO Orders VALUES
(1001, 1, '2025-05-01', 1120.00),
(1002, 2, '2025-05-03', 50.00),
(1003, 1, '2025-05-04', 25.00),
(1004, 3, '2025-05-05', 819.99);

INSERT INTO OrderItems VALUES
(1, 1001, 102, 1),
(2, 1001, 103, 1),
(3, 1002, 104, 2),
(4, 1003, 104, 1),
(5, 1004, 101, 1),
(6, 1004, 104, 1);
