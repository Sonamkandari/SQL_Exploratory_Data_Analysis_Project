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

