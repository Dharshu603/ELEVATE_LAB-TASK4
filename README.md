# ELEVATE_LAB-TASK4
# 📊 SQL eCommerce Analysis Project

This project demonstrates SQL skills by analyzing an eCommerce dataset using **SQLite** with **DB Browser for SQLite**.

---

## 🗃️ Dataset Overview

The project uses a sample eCommerce database with the following schema:

- **Customers** (`customer_id`, `name`, `email`, `city`)
- **Orders** (`order_id`, `customer_id`, `order_date`, `total_amount`)
- **Products** (`product_id`, `name`, `category`, `price`)
- **OrderItems** (`order_item_id`, `order_id`, `product_id`, `quantity`)

---

## 🔧 Tools Used

- **DB Browser for SQLite**
- **SQLite**
- SQL queries (`.sql` files)
- Screenshots (not included here)

---

## ✅ Tasks Performed

### a. Basic SQL Queries
- Used `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`
- Filtered customers from specific cities
- Counted orders per customer

### b. Joins
- `INNER JOIN` for order-customer details
- `LEFT JOIN` to show all customers and their orders
- Simulated `RIGHT JOIN` using `LEFT JOIN` (SQLite limitation)

### c. Subqueries
- Found customers who spent more than the average order value

### d. Aggregate Functions
- Calculated total revenue per product category (`SUM`)
- Computed average quantity sold (`AVG`)

### e. Views
- Created a view: `TopSellingProducts` to show total sold units per product

### f. Query Optimization
- Added indexes to frequently joined columns for performance

---

## 📁 Files Included

- `ecommerce_dataset.sql`: SQL script to create tables and insert sample data
- `ecommerce_analysis_queries.sql`: SQL queries for analysis

---

## 🚀 How to Run

1. Download and install [DB Browser for SQLite](https://sqlitebrowser.org/dl).
2. Create a new SQLite database (e.g., `ecommerce.db`).
3. Open `ecommerce_dataset.sql` in the "Execute SQL" tab and run it.
4. Open `ecommerce_analysis_queries.sql` and run it to perform analysis.
5. Take screenshots of the query results as needed.

---

## 📌 Author

- Dharshini S  
- Internship/Organization: Elevate labs

---

## 📝 License

This project is open-source and free to use for educational purposes.
