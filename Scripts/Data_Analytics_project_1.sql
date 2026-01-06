use DataWarehouse

select * from gold.dim_customers;

-- EXPLORE ALL THE OBJECTS IN THE DATABASE
select * from INFORMATION_SCHEMA.TABLES;

-- EXPLORE ALL COLUMNS IN THE DATABASE
select * from  INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='dim_customers';

--- Explore All first name of customers 
select Distinct first_name from gold.dim_customers 

-- what are the distinct gender
select Distinct gender from gold.dim_customers;
-- what are the distinct marital status 
select Distinct marital_status from gold.dim_customers;

---
-- Explore all Product Categories "The major Divisions"
select Distinct category, subcategory, product_name from gold.dim_products
order by 1,2,3;

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


-- Finding the youngest and oldest customer
select min(birthdate) as Youngest_customer,
max (birthdate) as oldest_customer from gold.dim_customers;

-- finding the difference of years between youngest and oldest person
select min(birthdate) as oldest_person,
max(birthdate) as  youngest_customer ,
Datediff(year,Min(birthdate),getdate()) as oldest_age,
Datediff(year,MIN(birthdate),max(birthdate)) as Age_difference ,
datediff(year,max(birthdate),getdate()) as youngest_age,
datediff(month,Min(birthdate),max(birthdate)) as month_difference
from gold.dim_customers;	


