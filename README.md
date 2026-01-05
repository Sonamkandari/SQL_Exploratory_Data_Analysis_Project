# SQL_Exploratory_Data_Analysis_Project
<img width="581" height="483" alt="image" src="https://github.com/user-attachments/assets/ac99aeee-3c7b-4a7f-9c3b-538c0e6c51da" />

---
<img width="888" height="533" alt="image" src="https://github.com/user-attachments/assets/2b0cbea6-3600-4662-8149-e120c7a87343" />

---
# EDA (Exploratory Data Analysis 
---
## **Database Exploration**
```
use DataWarehouse

select * from gold.dim_customers;
-- EXPLORE ALL THE OBJECTS IN THE DATABASE
select * from INFORMATION_SCHEMA.TABLES;

-- EXPLORE ALL COLUMNS IN THE DATABASE
select * from  INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='dim_customers'
```
---
## Dimensions Exploration
- Identifying the unique values or categories in each dimension, recognizing how data might be grouped or segmented, which is useful for later data analysis. 
<img width="708" height="462" alt="image" src="https://github.com/user-attachments/assets/a64e0243-c8b8-4ad0-9a2e-53edccc57867" />

---

```
-- Explore All first name of customers 
select Distinct first_name from gold.dim_customers 

-- what are the distinct gender
select Distinct gender from gold.dim_customers;
-- what are the distinct marital status 
select Distinct marital_status from gold.dim_customers;

-- Explore all Product Categories "The major Divisions"
select Distinct category, subcategory, product_name from gold.dim_products
order by 1,2,3;
```
---
## This is how we Explore the dimension of our Datawarehouse
---
<img width="734" height="282" alt="image" src="https://github.com/user-attachments/assets/55461c05-e33d-4c7a-96b4-3fc052a18363" />

---
## Date Exploration
---
- Identify the earliest and latest dates (boundries)
- Understand the scope of data and timespan
---
<img width="873" height="302" alt="image" src="https://github.com/user-attachments/assets/025a3f82-27db-4aa5-a467-749a0a7dec68" />

---
```
--------------------- 
-- DATE EXPLORATION
---------------------
select order_date from gold.fact_sales;

-- find minimum date
select Min(order_date) first_order_date from gold.fact_sales;-- this will generate the oldest order date

-- find maximum date
select max(order_date) last_order_date from gold.fact_sales;-- this will output the latest order date

-- Use of DATEDIFF  function
-- generating together the first and last date of the orders
select Min(order_date) as first_order_date,
max(order_date) last_order_date,
Datediff(year,MIN(order_date),max(order_date)) as order_range_years,
Datediff(month,MIN(order_date),max(order_date)) as order_range_Month
from gold.fact_sales;

```
---
<img width="866" height="457" alt="image" src="https://github.com/user-attachments/assets/0b0708ec-735e-46ac-9b74-62c525825ced" />

---
## MEASURES EXPLORATION
```
-----------------------
-- MEASURES EXPLORATION
-----------------------
-- Find the:Total sales
select sum(sales_amount) As total_sales from gold.fact_sales ;

-- Find the: How many items are sold
select sum (quantity) as total_quantity from gold.fact_sales;

-- Find the: Average selling price
select AVG(price) from gold.fact_sales;

-- Find the: Total number of orders
select count(order_number) as Total_orders, -- as same order is repeated maximum time
count(Distinct order_number) as Different_Total_orders from gold.fact_sales;

-- Find the: Total number of products
select COUNT(product_key) as Total_Product from gold.dim_products
select count(distinct product_key) as Total_price from gold.dim_products -- it will remove the duplicate product keys

-- Find the: Total number of customers
select count( customer_key) as Total_customers from gold.dim_customers

select count(distinct customer_key) as total_customers from gold.dim_customers--it will remove all the duplicate customer key

-- Find the: Total number of customers that placed an order
select count(distinct customer_key) as total_oder_placed from gold.fact_sales


```


