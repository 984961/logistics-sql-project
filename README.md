📦 Logistics Data Analysis Using SQL

A complete SQL-based data analysis project focused on optimizing logistics operations such as shipment performance, delivery efficiency, transportation cost analysis, and warehouse metrics.

🗂️ Project Overview

This project analyzes logistics-related datasets using SQL to extract insights that help improve supply-chain decision-making.
It includes analysis on:

Shipment delays

On-time performance

Transportation cost trends

Warehouse inventory movement

Carrier efficiency

Route optimization

This project demonstrates practical SQL skills used in real-world logistics analytics.

🎯 Objectives

Identify major factors causing shipment delays

Analyze carrier performance

Track monthly logistics KPIs

Optimize delivery routes

Reduce transportation cost through data insights

Improve warehouse operations using data patterns

🛠️ Tech Stack

SQL (MySQL / PostgreSQL / SQL Server)

Excel / CSV datasets

Power BI / Tableau (optional)

📁 Dataset Description

Typical tables used in the analysis:

shipments
Column	Description
shipment_id	Unique ID for each shipment
order_date	Date order was placed
ship_date	Date product shipped
delivery_date	Date product delivered
origin	Warehouse location
destination	Delivery location
carrier	Transportation partner
status	Delivered / In-Transit / Delayed
shipping_cost	Total logistics cost
warehouse_inventory
Column	Description
product_id	Product identifier
warehouse	Warehouse location
stock_in	Stock received
stock_out	Stock shipped
date	Transaction date
📊 Key SQL Queries
1. On-Time Delivery Rate
SELECT 
    carrier,
    COUNT(*) AS total_shipments,
    SUM(CASE WHEN delivery_date <= expected_date THEN 1 ELSE 0 END) AS on_time,
    (SUM(CASE WHEN delivery_date <= expected_date THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS on_time_rate
FROM shipments
GROUP BY carrier;

2. Average Shipping Cost by Route
SELECT 
    origin, 
    destination,
    ROUND(AVG(shipping_cost), 2) AS avg_cost
FROM shipments
GROUP BY origin, destination
ORDER BY avg_cost DESC;

3. Monthly Logistics Performance
SELECT 
    DATE_FORMAT(delivery_date, '%Y-%m') AS month,
    COUNT(*) AS total_deliveries,
    AVG(DATEDIFF(delivery_date, ship_date)) AS avg_transit_days
FROM shipments
GROUP BY month
ORDER BY month;

4. Warehouse Inventory Movement
SELECT 
    warehouse,
    SUM(stock_in) AS total_in,
    SUM(stock_out) AS total_out,
    (SUM(stock_in) - SUM(stock_out)) AS net_balance
FROM warehouse_inventory
GROUP BY warehouse;

📈 Insights Generated

Top routes causing delays

Best-performing carriers

High-cost shipping lanes

Seasonal patterns in shipment volume

Warehouse bottlenecks

Cost-saving opportunities

📘 How to Use This Project

Clone the repository

Import the provided SQL files into your database

Load sample data (CSV files)

Execute queries in any SQL environment

Review insights in the results

🚀 Future Enhancements

Add Power BI dashboard

Predict delays using ML

Live API logistics tracking

Add stored procedures and triggers

🙌 Author

Gundelugunta Mohan Reddy
Data Analyst | SQL | Python | Power BI
