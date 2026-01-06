-- Ranking Analysis
-- Order the values of dimensions by measures
-- Top N performers | Bottom N Performers

-- which 5 products generate the highest revenue?
select top 5
p.product_name,
sum(f.sales_amount)as total_revanue
from gold.fact_sales f
left join gold.dim_products p
on p.product_key=f.product_key
group by p.product_name
order by total_revanue desc


-- Window functions : For more flexible and complex quaries with extra space
select 
p.product_name,
sum(f.sales_amount) total_revanue,
ROW_NUMBER() over(order by sum(f.sales_amount)DESC) AS rank_products
from gold.fact_sales f
left join gold.dim_products p
on p.product_key= f.product_key
group by p.product_name

-- select  product_name from gold.dim_products;
-- select count(sales_amount) from gold.fact_sales;


-- Which are the 5 worst-performing products in terms of sales?

