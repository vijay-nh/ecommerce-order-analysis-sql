# E-Commerce Order Analysis - SQL Project

## 📌 Project Overview
This project analyses e-commerce order data for a B2C company using MySQL.
It covers revenue analysis, customer behaviour, product category performance,
city-wise sales, and monthly revenue trends.

---

## 🛠️ Tools Used
- MySQL
- MySQL Workbench

---

## 📊 Dataset
A custom dataset of 15 orders with the following fields:

| Column | Description |
|---|---|
| order_id | Unique identifier for each order |
| customer_name | Name of the customer |
| customer_city | City the order came from |
| product_category | Category of the product |
| product_name | Name of the product |
| quantity | Number of units ordered |
| unit_price | Price per unit |
| order_date | Date the order was placed |
| order_status | Delivered / Cancelled / Returned |

---

## 🔍 Key Business Questions Answered

1. How many total orders were received?
2. What is the total revenue generated?
3. What is the revenue from delivered orders only?
4. How many orders came from each city?
5. Which product category generates the most revenue?
6. Which city generates the most revenue?
7. What is the breakdown of Delivered, Cancelled and Returned orders?
8. How do orders break down into High, Medium and Low value segments?
9. What is the monthly revenue trend?

---

## 💡 Key Insights

- **Electronics** was the top revenue generating category
- **Mumbai** led all cities in total order revenue
- **January to March** showed a growing monthly revenue trend
- Majority of orders were successfully **Delivered**
- Most orders fell in the **Low Value** category

---

## 🧠 New SQL Concepts Practised

- DECIMAL data type for prices
- ORDER BY with ASC and DESC
- MONTHNAME() date function
- CASE statements for value segmentation
- Combining CASE + GROUP BY

---

## 🚀 What I Learned
- How to analyse real business data using SQL
- Writing queries that answer actual business questions
- Using CASE statements to create custom categories
- Tracking revenue trends over time using date functions
