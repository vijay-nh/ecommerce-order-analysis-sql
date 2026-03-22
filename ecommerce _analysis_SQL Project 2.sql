CREATE database ecommerce_analysis;
USE ecommerce_analysis;

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_name VARCHAR(50),
customer_city VARCHAR(50),
product_category VARCHAR(50),
product_name VARCHAR(50),
quantity INT,
unit_price DECIMAL(10,2),
order_date DATE,
order_status VARCHAR(20)
);

INSERT INTO orders VALUES
(1, 'Amit Sharma','Mumbai','Electronics','Bluetooth Speaker', 2, 1499.00, '2024-01-05','Delivered');

INSERT INTO orders VALUES
(2, 'Priya Patel', 'Delhi', 'Clothing', 'Winter Jacket', 1, 2999.00, '2024-01-10', 'Delivered'),
(3, 'Rahul Verma', 'Bangalore', 'Electronics', 'Wireless Earbuds', 3, 899.00, '2024-01-15', 'Delivered'),
(4, 'Sneha Iyer', 'Chennai', 'Beauty', 'Skincare Kit', 2, 799.00, '2024-01-18', 'Cancelled'),
(5, 'Karan Mehta', 'Mumbai', 'Electronics', 'Smart Watch', 1, 4999.00, '2024-02-02', 'Delivered'),
(6, 'Divya Nair', 'Hyderabad', 'Clothing', 'Formal Shirt', 3, 1299.00, '2024-02-10', 'Delivered'),
(7, 'Arjun Das', 'Bangalore', 'Electronics', 'Bluetooth Speaker', 1, 1499.00, '2024-02-14', 'Returned'),
(8, 'Meera Joshi', 'Delhi', 'Beauty', 'Perfume Set', 2, 1899.00, '2024-02-20', 'Delivered'),
(9, 'Rohan Gupta', 'Mumbai', 'Furniture', 'Study Table', 1, 8999.00, '2024-03-01', 'Delivered'),
(10, 'Ananya Singh', 'Chennai', 'Clothing', 'Saree', 2, 1599.00, '2024-03-05', 'Delivered'),
(11, 'Vikram Rao', 'Hyderabad', 'Electronics', 'Wireless Earbuds', 2, 899.00, '2024-03-10', 'Delivered'),
(12, 'Pooja Reddy', 'Bangalore', 'Beauty', 'Skincare Kit', 1, 799.00, '2024-03-15', 'Delivered'),
(13, 'Siddharth Kumar', 'Delhi', 'Furniture', 'Office Chair', 1, 6999.00, '2024-03-20', 'Cancelled'),
(14, 'Lakshmi Menon', 'Mumbai', 'Clothing', 'Casual Dress', 2, 1199.00, '2024-03-25', 'Delivered'),
(15, 'Nikhil Jain', 'Bangalore', 'Electronics', 'Smart Watch', 1, 4999.00, '2024-03-28', 'Delivered');

SELECT * FROM orders;
SELECT COUNT(*) AS total_orders
FROM orders;

SELECT SUM(quantity * unit_price) AS total_revenue
FROM orders;

SELECT * FROM orders
WHERE order_status = 'Delivered';

SELECT SUM(quantity*unit_price) AS delivered_revenue
FROM orders
WHERE order_status = 'Delivered';

SELECT customer_city, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_city;

SELECT product_category, SUM(quantity*unit_price) AS category_revenue
FROM orders
WHERE order_status = 'Delivered'
GROUP BY product_category
ORDER BY category_revenue DESC;

SELECT customer_city, SUM(quantity*unit_price) AS city_revenue
FROM orders
WHERE order_status = 'Delivered'
GROUP BY customer_city
ORDER BY city_revenue DESC;

SELECT order_status, COUNT(*) AS total
FROM orders
GROUP BY order_status;

SELECT order_id, customer_name, product_name, (quantity*unit_price) AS order_value,
CASE WHEN(quantity*unit_price) >= 5000 THEN 'High Value'
WHEN(quantity*unit_price) <= 5000 THEN 'Medium Value'
ELSE 'Low Value'
END AS value_category
FROM orders;

SELECT 
CASE 
WHEN (quantity*unit_price) >= 5000 THEN 'High Value'
WHEN(quantity*unit_price) <=2000 THEN 'Medium Value'
ELSE 'Low Value'
END AS value_category,
COUNT(*) AS total_orders
FROM orders
GROUP BY value_category 
ORDER BY value_category DESC;

SELECT MONTHNAME(order_date) AS month,
SUM(quantity*unit_price) AS monthly_revenue
FROM orders
WHERE order_status = 'Delivered'
GROUP BY MONTHNAME(order_date)
ORDER BY MIN(order_date);	
